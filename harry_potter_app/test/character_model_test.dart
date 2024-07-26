import 'dart:convert';

import 'package:harry_potter_app/models/character_model.dart';
import 'package:harry_potter_app/services/network_service.dart';
import 'package:test/test.dart';

void main() {
  group('Testing: Character model', () {
    test('Testing: Attribute.fromJson in Character model', () async {
      final String? response = await Network.methodGet(
          api: Network.apiCharacters,
          slug: '1992-gryffindor-vs-slytherin-quidditch-match-spectators');

      final Map<String, Object?> json =
          jsonDecode(response!)['data']['attributes'];
      final Attribute attribute = Attribute.fromJson(json);

      expect(attribute, const TypeMatcher<Attribute>());
    });

    test('Testing: Character.fromJson in Character model', () async {
      final String? response = await Network.methodGet(
          api: Network.apiCharacters,
          slug: '1992-gryffindor-vs-slytherin-quidditch-match-spectators');

      final Map<String, Object?> json = jsonDecode(response!)['data'];
      final Character character = Character.fromJson(json);

      expect(character, const TypeMatcher<Character>());
    });
  });
}
