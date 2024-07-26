import 'dart:convert';

import 'package:harry_potter_app/models/movie_model.dart';
import 'package:harry_potter_app/services/network_service.dart';
import 'package:test/test.dart';

void main() {
  group('Testing: Movie model', () {
    test(
      'Testing: Attribute.fromJson in Character model',
      () async {
        final String? response = await Network.methodGet(
            api: Network.apiMovies,
            slug: 'fantastic-beasts-and-where-to-find-them');

        final Map<String, Object?> json =
            jsonDecode(response!)['data']['attributes'];
        final Attribute attribute = Attribute.fromJson(json);

        expect(attribute, const TypeMatcher<Attribute>());
      },
    );

    test(
      'Testing: Movie.fromJson in Character model',
      () async {
        final String? response = await Network.methodGet(
            api: Network.apiMovies,
            slug: 'fantastic-beasts-and-where-to-find-them');

        final Map<String, Object?> json = jsonDecode(response!)['data'];
        final Movie movie = Movie.fromJson(json);

        expect(movie, const TypeMatcher<Movie>());
      },
    );

    test(
      'Testing: Movie.fromJson in Character model',
      () async {
        final String? response = await Network.methodGet(
            api: Network.apiMovies,
            slug: 'fantastic-beasts-and-where-to-find-them');

        final Map<String, Object?> json = jsonDecode(response!)['data'];
        final Movie movie = Movie.fromJson(json);

        expect(movie, const TypeMatcher<Movie>());
      },
    );
  });
}
