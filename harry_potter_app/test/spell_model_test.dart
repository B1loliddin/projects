import 'dart:convert';

import 'package:harry_potter_app/models/spell_model.dart';
import 'package:harry_potter_app/services/network_service.dart';
import 'package:test/test.dart';

void main() {
  group('Testing: Spell model', () {
    test(
      'Testing: Attribute.fromJson in Character model',
      () async {
        final String? response =
            await Network.methodGet(api: Network.apiSpells, slug: 'age-line');

        final Map<String, Object?> json =
            jsonDecode(response!)['data']['attributes'];
        final Attribute attribute = Attribute.fromJson(json);

        expect(attribute, const TypeMatcher<Attribute>());
      },
    );

    test(
      'Testing: Spell.fromJson in Character model',
      () async {
        final String? response =
            await Network.methodGet(api: Network.apiSpells, slug: 'age-line');

        final Map<String, Object?> json = jsonDecode(response!)['data'];
        final Spell spell = Spell.fromJson(json);

        expect(spell, const TypeMatcher<Spell>());
      },
    );
  });
}
