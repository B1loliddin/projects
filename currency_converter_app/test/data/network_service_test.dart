import 'package:currency_converter_app/core/apis.dart';
import 'package:currency_converter_app/data/network_service.dart';
import 'package:flutter/foundation.dart';
import 'package:test/test.dart';

void main() {
  test('Testing HttpNetwork Service For All Currencies', () async {
    final HttpNetwork httpNetwork = HttpNetwork();
    final String? response =
        await httpNetwork.methodGet(api: Api.apiCurrencies);
    debugPrint('$response');

    expect(response, isNotNull);
  });

  test('Testing HttpNetwork Service For One Currency', () async {
    final HttpNetwork httpNetwork = HttpNetwork();
    final String? response =
        await httpNetwork.methodGet(api: Api.apiCurrencies, id: 'USD');
    debugPrint('$response');

    expect(response, isNotNull);
  });
}
