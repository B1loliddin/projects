import 'dart:convert';

import 'package:harry_potter_app/models/potion_model.dart';
import 'package:harry_potter_app/services/network_service.dart';
import 'package:test/test.dart';

void main() {
  group('Testing: Potion model', () {
    test(
      'Testing: Attribute.fromJson in Character model',
      () async {
        final String? response = await Network.methodGet(
            api: Network.apiPotions, slug: 'ageing-potion');

        final Map<String, Object?> json =
            jsonDecode(response!)['data']['attributes'];
        final Attribute attribute = Attribute.fromJson(json);

        expect(attribute, const TypeMatcher<Attribute>());
      },
    );

    test(
      'Testing: Potion.fromJson in Character model',
      () async {
        final String? response = await Network.methodGet(
            api: Network.apiPotions, slug: 'ageing-potion');

        final Map<String, Object?> json = jsonDecode(response!)['data'];
        final Potion potion = Potion.fromJson(json);

        expect(potion, const TypeMatcher<Potion>());
      },
    );
  });
}
