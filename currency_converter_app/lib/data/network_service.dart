import 'dart:convert';

import 'package:currency_converter_app/core/apis.dart';
import 'package:http/http.dart' as http;

abstract interface class Network {
  Future<String?> methodGet({
    required String api,
    String baseUrl = Api.baseUrl,
    String? id,
    Map<String, String> headers = Api.headers,
  });

  Future<void> methodPost({
    required String api,
    required String body,
    String baseUrl = Api.baseUrl,
    Map<String, String> headers = Api.headers,
  });

  Future<void> methodPut({
    required String api,
    required String? id,
    required String body,
    String baseUrl = Api.baseUrl,
    Map<String, String> headers = Api.headers,
  });

  Future<void> methodPatch({
    required String api,
    required String? id,
    required String body,
    String baseUrl = Api.baseUrl,
    Map<String, String> headers = Api.headers,
  });

  Future<void> methodDelete({
    required String api,
    required String id,
    String baseUrl = Api.baseUrl,
    Map<String, String> headers = Api.headers,
  });
}

class HttpNetwork implements Network {
  @override
  Future<String?> methodGet({
    required String api,
    String baseUrl = Api.baseUrl,
    String? id,
    Map<String, String> headers = Api.headers,
  }) async {
    try {
      final Uri url = Uri.https(baseUrl, '$api${id != null ? '$id/' : ''}');

      final http.Response response = await http.get(url);

      if (response.statusCode == 200) {
        return utf8.decoder.convert(response.bodyBytes);
      }
    } catch (e) {
      return null;
    }

    return null;
  }

  @override
  Future<void> methodPost({
    required String api,
    required String body,
    String baseUrl = Api.baseUrl,
    Map<String, String> headers = Api.headers,
  }) {
    // TODO: implement methodPost
    throw UnimplementedError();
  }

  @override
  Future<void> methodPut({
    required String api,
    required String? id,
    required String body,
    String baseUrl = Api.baseUrl,
    Map<String, String> headers = Api.headers,
  }) {
    // TODO: implement methodPut
    throw UnimplementedError();
  }

  @override
  Future<void> methodPatch({
    required String api,
    required String? id,
    required String body,
    String baseUrl = Api.baseUrl,
    Map<String, String> headers = Api.headers,
  }) {
    // TODO: implement methodPatch
    throw UnimplementedError();
  }

  @override
  Future<void> methodDelete({
    required String api,
    required String id,
    String baseUrl = Api.baseUrl,
    Map<String, String> headers = Api.headers,
  }) {
    // TODO: implement methodDelete
    throw UnimplementedError();
  }
}
