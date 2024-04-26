import 'dart:convert';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start synergy Group Code

class SynergyGroup {
  static String baseUrl = 'http://217.160.213.124:8089';
  static Map<String, String> headers = {
    'Content-Type': 'application/json',
  };
  static LoginCall loginCall = LoginCall();
  static GetFinanceACCCall getFinanceACCCall = GetFinanceACCCall();
  static GetFinanceCotisationCall getFinanceCotisationCall =
      GetFinanceCotisationCall();
  static GetFinanceBusinessCall getFinanceBusinessCall =
      GetFinanceBusinessCall();
  static GetFinanceDepenseInterneCall getFinanceDepenseInterneCall =
      GetFinanceDepenseInterneCall();
  static GetAllGeneralInfoCall getAllGeneralInfoCall = GetAllGeneralInfoCall();
}

class LoginCall {
  Future<ApiCallResponse> call({
    String? email = 'adalgice12@gmail.com',
    String? password = 'mdp',
  }) async {
    final ffApiRequestBody = '''
{
  "email": "$email",
  "password": "$password"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'login',
      apiUrl: '${SynergyGroup.baseUrl}/user/login',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  int? userId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.entity.id''',
      ));
  String? userFirstName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.entity.firstName''',
      ));
  String? userLastName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.entity.lastName''',
      ));
  String? userEmail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.entity.email''',
      ));
  String? userTel(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.entity.tel''',
      ));
  String? userRole(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.entity.role''',
      ));
  String? userImgProfile(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.entity.img''',
      ));
}

class GetFinanceACCCall {
  Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'getFinanceACC',
      apiUrl: '${SynergyGroup.baseUrl}/finance/allacc',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  int? result(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.entity''',
      ));
}

class GetFinanceCotisationCall {
  Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'getFinanceCotisation',
      apiUrl: '${SynergyGroup.baseUrl}/finance/allcotisation',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  int? result(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.entity''',
      ));
}

class GetFinanceBusinessCall {
  Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'getFinanceBusiness',
      apiUrl: '${SynergyGroup.baseUrl}/finance/allbuss',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetFinanceDepenseInterneCall {
  Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'getFinanceDepenseInterne',
      apiUrl: '${SynergyGroup.baseUrl}/finance/alldi',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  double? result(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.entity''',
      ));
}

class GetAllGeneralInfoCall {
  Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'getAllGeneralInfo',
      apiUrl: '${SynergyGroup.baseUrl}/finance/allfinanceinfos',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  int? acc(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.entity.ACC''',
      ));
  double? di(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.entity.DI''',
      ));
  int? buss(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.entity.BUSS''',
      ));
  int? coti(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.entity.COTI''',
      ));
  int? nombreAcc(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.entity.NbrAcc''',
      ));
  String? satisfactionClient(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.entity.SATISFACTION''',
      ));
  int? membreInterne(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.entity.MEMBRES''',
      ));
}

/// End synergy Group Code

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

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
