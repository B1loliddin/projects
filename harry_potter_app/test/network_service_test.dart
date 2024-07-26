import 'package:harry_potter_app/models/book_model.dart';
import 'package:harry_potter_app/models/character_model.dart';
import 'package:harry_potter_app/models/movie_model.dart';
import 'package:harry_potter_app/models/potion_model.dart';
import 'package:harry_potter_app/models/spell_model.dart';
import 'package:harry_potter_app/services/network_service.dart';
import 'package:test/test.dart';

void main() {
  test('Testing: methodGet', () async {
    final String? response = await Network.methodGet(api: Network.apiBooks);

    expect(response, isNotNull);
  });

  test('Testing: parseBookList', () async {
    final String? response = await Network.methodGet(api: Network.apiBooks);
    final List<Book> books = Network.parseBookList(response!);

    expect(books, const TypeMatcher<List<Book>>());
  });

  test('Testing: parseCharacterList', () async {
    final String? response =
        await Network.methodGet(api: Network.apiCharacters);
    final List<Character> characters = Network.parseCharacterList(response!);

    expect(characters, const TypeMatcher<List<Character>>());
  });

  test('Testing: parseMovieList', () async {
    final String? response = await Network.methodGet(api: Network.apiMovies);
    final List<Movie> movies = Network.parseMovieList(response!);

    expect(movies, const TypeMatcher<List<Movie>>());
  });

  test('Testing: parsePotionList', () async {
    final String? response = await Network.methodGet(api: Network.apiMovies);
    final List<Potion> potions = Network.parsePotionList(response!);

    expect(potions, const TypeMatcher<List<Potion>>());
  });

  test('Testing: parseSpellList', () async {
    final String? response = await Network.methodGet(api: Network.apiMovies);
    final List<Spell> spells = Network.parseSpellList(response!);

    expect(spells, const TypeMatcher<List<Spell>>());
  });

  test('Testing: parseBook', () async {
    final String? response = await Network.methodGet(
        api: Network.apiBooks,
        slug: 'harry-potter-and-the-philosopher-s-stone');
    final Book book = Network.parseBook(response!);

    expect(book, const TypeMatcher<Book>());
  });

  test('Testing: parseCharacter', () async {
    final String? response = await Network.methodGet(
        api: Network.apiCharacters,
        slug: '1992-gryffindor-vs-slytherin-quidditch-match-spectators');
    final Character character = Network.parseCharacter(response!);

    expect(character, const TypeMatcher<Character>());
  });

  test('Testing: parseMovie', () async {
    final String? response = await Network.methodGet(
        api: Network.apiMovies,
        slug: 'fantastic-beasts-and-where-to-find-them');
    final Movie movie = Network.parseMovie(response!);

    expect(movie, const TypeMatcher<Movie>());
  });

  test('Testing: parseSpell', () async {
    final String? response =
        await Network.methodGet(api: Network.apiSpells, slug: 'age-line');
    final Spell spell = Network.parseSpell(response!);

    expect(spell, const TypeMatcher<Spell>());
  });
}
