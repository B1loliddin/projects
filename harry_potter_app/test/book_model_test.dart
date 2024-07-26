import 'dart:convert';

import 'package:harry_potter_app/models/book_model.dart';
import 'package:harry_potter_app/services/network_service.dart';
import 'package:test/test.dart';

void main() {
  group('Testing: Book model', () {
    test('Testing: Data.fromJson in Book model', () async {
      final String? response = await Network.methodGet(
          api: Network.apiBooks,
          slug: 'harry-potter-and-the-philosopher-s-stone');

      final Map<String, Object?> json = jsonDecode(response!)['data'];
      final Data data = Data.fromJson(json);

      expect(data, const TypeMatcher<Data>());
    });

    test('Testing: Chapter.fromJson in Book model', () async {
      final String? response = await Network.methodGet(
          api: Network.apiBooks,
          slug: 'harry-potter-and-the-philosopher-s-stone');

      final Map<String, Object?> json =
          jsonDecode(response!)['data']['relationships']['chapters'];
      final Chapter chapter = Chapter.fromJson(json);

      expect(chapter, const TypeMatcher<Chapter>());
    });

    test('Testing: Relationship.fromJson in Book model', () async {
      final String? response = await Network.methodGet(
          api: Network.apiBooks,
          slug: 'harry-potter-and-the-philosopher-s-stone');

      final Map<String, Object?> json =
          jsonDecode(response!)['data']['relationships'];
      final Relationship relationship = Relationship.fromJson(json);

      expect(relationship, const TypeMatcher<Relationship>());
    });

    test('Testing: Attribute.fromJson in Book model', () async {
      final String? response = await Network.methodGet(
          api: Network.apiBooks,
          slug: 'harry-potter-and-the-philosopher-s-stone');

      final Map<String, Object?> json =
          jsonDecode(response!)['data']['attributes'];
      final Attribute attribute = Attribute.fromJson(json);

      expect(attribute, const TypeMatcher<Attribute>());
    });

    test('Testing: Book.fromJson in Book model', () async {
      final String? response = await Network.methodGet(
          api: Network.apiBooks,
          slug: 'harry-potter-and-the-philosopher-s-stone');

      final Map<String, Object?> json = jsonDecode(response!)['data'];
      final Book book = Book.fromJson(json);

      expect(book, const TypeMatcher<Book>());
    });
  });
}
