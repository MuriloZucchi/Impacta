import 'dart:convert';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class ConCepCall {
  static Future<ApiCallResponse> call({
    String? cep = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'conCep',
      apiUrl: 'viacep.com.br/ws/${cep}/json/',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? pcep(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.cep''',
      ));
  static String? plongradouro(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.logradouro''',
      ));
  static String? pbairro(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.bairro''',
      ));
  static String? pcomplemento(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.complemento''',
      ));
  static String? pcidade(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.localidade''',
      ));
  static String? puf(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.uf''',
      ));
  static String? pestado(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.estado''',
      ));
}

class ApiCadastroCall {
  static Future<ApiCallResponse> call({
    String? cNome = '',
    String? cEmail = '',
    String? cSenha = '',
    String? cNumero = '',
  }) async {
    final ffApiRequestBody = '''
{
  "nome": "${escapeStringForJson(cNome)}",
  "email": "${escapeStringForJson(cEmail)}",
  "senha": "${escapeStringForJson(cSenha)}",
  "numero": "${escapeStringForJson(cNumero)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'ApiCadastro',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:yNjbB5PN/auth/signup',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiCadasEnderCall {
  static Future<ApiCallResponse> call({
    String? cLongradouro = '',
    String? cNumero = '',
    String? cComplemento = '',
    String? cBairro = '',
    String? cReferencia = '',
  }) async {
    final ffApiRequestBody = '''

{
  "longradouro": "${escapeStringForJson(cLongradouro)}",
  "numero": "${escapeStringForJson(cNumero)}",
  "complemento": "${escapeStringForJson(cComplemento)}",
  "bairro": "${escapeStringForJson(cBairro)}",
  "referencia": "${escapeStringForJson(cReferencia)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'ApiCadasEnder',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:bQLUlOV-/endereco',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PostCepCall {
  static Future<ApiCallResponse> call({
    String? cCep = '',
    String? cUf = '',
    String? cCidade = '',
  }) async {
    final ffApiRequestBody = '''
{
 "cep": "${escapeStringForJson(cCep)}",
 "uf": "${escapeStringForJson(cUf)}",
 "cidade": "${escapeStringForJson(cCidade)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'PostCep',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:bQLUlOV-/cep',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}
