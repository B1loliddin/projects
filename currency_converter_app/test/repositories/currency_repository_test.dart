import 'package:currency_converter_app/data/network_service.dart';
import 'package:currency_converter_app/domain/models/currency/currency.dart';
import 'package:currency_converter_app/domain/repositories/currency_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:test/test.dart';

void main() {
  test('Testing CurrencyRepositoryImplementation fetchAllCurrencies', () async {
    CurrencyRepositoryImplementation currencyRepositoryImplementation =
        CurrencyRepositoryImplementation(network: HttpNetwork());
    final List<Currency> currencies =
        await currencyRepositoryImplementation.fetchAllCurrencies();
    debugPrint('$currencies');

    expect(currencies, const TypeMatcher<List<Currency>>());
  });

  test('Testing CurrencyRepositoryImplementation fetchOneCurrency', () async {
    CurrencyRepositoryImplementation currencyRepositoryImplementation =
        CurrencyRepositoryImplementation(network: HttpNetwork());
    final Currency currency =
        await currencyRepositoryImplementation.fetchOneCurrency(id: 'USD');
    debugPrint('$currency');

    expect(currency, const TypeMatcher<Currency>());
  });
}
