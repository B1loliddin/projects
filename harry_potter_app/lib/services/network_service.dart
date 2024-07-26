import 'dart:convert';

import 'package:harry_potter_app/models/book_model.dart';
import 'package:harry_potter_app/models/character_model.dart';
import 'package:harry_potter_app/models/movie_model.dart';
import 'package:harry_potter_app/models/potion_model.dart';
import 'package:harry_potter_app/models/spell_model.dart';
import 'package:http/http.dart';

class Network {
  /// DOMAIN
  static const String baseUrl = 'api.potterdb.com';

  /// APIS
  static const String apiBooks = '/v1/books';
  static const String apiCharacters = '/v1/characters';
  static const String apiMovies = '/v1/movies';
  static const String apiPotions = '/v1/potions';
  static const String apiSpells = '/v1/spells';

  /// HEADERS
  static const Map<String, String> headers = {
    "Content-Type": "application/json",
  };

  /// METHODS
  static Future<String?> methodGet({
    required String api,
    String baseUrl = baseUrl,
    Map<String, String> headers = headers,
    String? slug,
  }) async {
    final Uri url = Uri.https(baseUrl, '$api${slug != null ? '/$slug' : ''}');

    try {
      final Response response = await get(url, headers: headers);

      if (response.statusCode == 200) {
        return response.body;
      }
    } catch (e) {
      return null;
    }

    return null;
  }

  /// PARSE
  static List<Book> parseBookList(String data) {
    final List result = jsonDecode(data)['data'];

    return result.map((json) => Book.fromJson(json)).toList(growable: false);
  }

  static List<Character> parseCharacterList(String data) {
    final List result = jsonDecode(data)['data'];

    return result
        .map((json) => Character.fromJson(json))
        .toList(growable: false);
  }

  static List<Movie> parseMovieList(String data) {
    final List result = jsonDecode(data)['data'];

    return result.map((json) => Movie.fromJson(json)).toList(growable: false);
  }

  static List<Potion> parsePotionList(String data) {
    final List result = jsonDecode(data)['data'];

    return result.map((json) => Potion.fromJson(json)).toList(growable: false);
  }

  static List<Spell> parseSpellList(String data) {
    final List result = jsonDecode(data)['data'];

    return result.map((json) => Spell.fromJson(json)).toList(growable: false);
  }

  static Book parseBook(String data) {
    final Map<String, Object?> result = jsonDecode(data)['data'];

    return Book.fromJson(result);
  }

  static Character parseCharacter(String data) {
    final Map<String, Object?> result = jsonDecode(data)['data'];

    return Character.fromJson(result);
  }

  static Movie parseMovie(String data) {
    final Map<String, Object?> result = jsonDecode(data)['data'];

    return Movie.fromJson(result);
  }

  static Potion parsePotion(String data) {
    final Map<String, Object?> result = jsonDecode(data)['data'];

    return Potion.fromJson(result);
  }

  static Spell parseSpell(String data) {
    final Map<String, Object?> result = jsonDecode(data)['data'];

    return Spell.fromJson(result);
  }
}
