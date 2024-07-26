import 'dart:convert';

import 'package:currency_converter_app/core/apis.dart';
import 'package:currency_converter_app/data/network_service.dart';
import 'package:currency_converter_app/domain/models/currency/currency.dart';

abstract interface class CurrencyRepository {
  Future<List<Currency>> fetchAllCurrencies();

  Future<Currency> fetchOneCurrency({required String id});
}

class CurrencyRepositoryImplementation implements CurrencyRepository {
  final Network network;

  const CurrencyRepositoryImplementation({required this.network});

  @override
  Future<List<Currency>> fetchAllCurrencies() async {
    final String? response = await network.methodGet(api: Api.apiCurrencies);
    final List data = jsonDecode(response!) as List;
    final List<Currency> currencies = data.map((json) {
      final Map item = json as Map;

      return Currency.fromJson(item as Map<String, Object?>);
    }).toList();

    return currencies;
  }

  @override
  Future<Currency> fetchOneCurrency({required String id}) async {
    final String? response =
        await network.methodGet(api: Api.apiCurrencies, id: id);
    final Map json = jsonDecode(response!)[0] as Map;
    final Map<String, Object?> data = json as Map<String, Object?>;
    final Currency currency = Currency.fromJson(data);

    return currency;
  }
}
