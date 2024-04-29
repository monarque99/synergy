import 'dart:convert';
import '../cloud_functions/cloud_functions.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start synergy Group Code

class SynergyGroup {
  static LoginCall loginCall = LoginCall();
  static GetFinanceACCCall getFinanceACCCall = GetFinanceACCCall();
  static GetFinanceCotisationCall getFinanceCotisationCall =
      GetFinanceCotisationCall();
  static GetFinanceBusinessCall getFinanceBusinessCall =
      GetFinanceBusinessCall();
  static GetFinanceDepenseInterneCall getFinanceDepenseInterneCall =
      GetFinanceDepenseInterneCall();
  static GetAllGeneralInfoCall getAllGeneralInfoCall = GetAllGeneralInfoCall();
  static GetAllAccompagnementCall getAllAccompagnementCall =
      GetAllAccompagnementCall();
  static CreateAccompagnementCall createAccompagnementCall =
      CreateAccompagnementCall();
  static UpdateAccompagnementCall updateAccompagnementCall =
      UpdateAccompagnementCall();
  static GetcotisationbyuserIdsCall getcotisationbyuserIdsCall =
      GetcotisationbyuserIdsCall();
}

class LoginCall {
  Future<ApiCallResponse> call({
    String? email = 'adalgice12@gmail.com',
    String? password = 'mdp',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'LoginCall',
        'variables': {
          'email': email,
          'password': password,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
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
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'GetFinanceACCCall',
        'variables': {},
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }

  int? result(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.entity''',
      ));
}

class GetFinanceCotisationCall {
  Future<ApiCallResponse> call() async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'GetFinanceCotisationCall',
        'variables': {},
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }

  int? result(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.entity''',
      ));
}

class GetFinanceBusinessCall {
  Future<ApiCallResponse> call() async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'GetFinanceBusinessCall',
        'variables': {},
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }
}

class GetFinanceDepenseInterneCall {
  Future<ApiCallResponse> call() async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'GetFinanceDepenseInterneCall',
        'variables': {},
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }

  double? result(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.entity''',
      ));
}

class GetAllGeneralInfoCall {
  Future<ApiCallResponse> call() async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'GetAllGeneralInfoCall',
        'variables': {},
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }

  double? acc(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.entity.ACC''',
      ));
  double? di(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.entity.DI''',
      ));
  double? buss(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.entity.BUSS''',
      ));
  double? coti(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.entity.COTI''',
      ));
  int? nombreAcc(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.entity.NbrAcc''',
      ));
  double? satisfactionClient(dynamic response) =>
      castToType<double>(getJsonField(
        response,
        r'''$.entity.SATISFACTION''',
      ));
  int? membreInterne(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.entity.MEMBRES''',
      ));
}

class GetAllAccompagnementCall {
  Future<ApiCallResponse> call() async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'GetAllAccompagnementCall',
        'variables': {},
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }

  List<int>? ids(dynamic response) => (getJsonField(
        response,
        r'''$.entity[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<double>? amount(dynamic response) => (getJsonField(
        response,
        r'''$.entity[:].amount''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  List<String>? status(dynamic response) => (getJsonField(
        response,
        r'''$.entity[:].status''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? paymentDate(dynamic response) => (getJsonField(
        response,
        r'''$.entity[:].paymentDate''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? startAt(dynamic response) => (getJsonField(
        response,
        r'''$.entity[:].startAt''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? linkContrat(dynamic response) => (getJsonField(
        response,
        r'''$.entity[:].linkContrat''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? userName(dynamic response) => (getJsonField(
        response,
        r'''$.entity[:].accompagnementUserName''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? userFirstName(dynamic response) => (getJsonField(
        response,
        r'''$.entity[:].accompagnementLastName''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? projectName(dynamic response) => (getJsonField(
        response,
        r'''$.entity[:].accompagnementProjectName''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? synergyMembreIds(dynamic response) => (getJsonField(
        response,
        r'''$.entity[:].userIds''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? satisfactionClient(dynamic response) => (getJsonField(
        response,
        r'''$.entity[:].satisfactionClient''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List? endAt(dynamic response) => getJsonField(
        response,
        r'''$.entity[:].endAt''',
        true,
      ) as List?;
}

class CreateAccompagnementCall {
  Future<ApiCallResponse> call({
    double? amount,
    String? status = '',
    String? startAt = '',
    String? linkContrat = '',
    String? accompagnementUserName = '',
    String? accompagnementLastName = '',
    String? accompagnementProjectName = '',
    String? paymentDate = '',
    String? endAt = '',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'CreateAccompagnementCall',
        'variables': {
          'amount': amount,
          'status': status,
          'startAt': startAt,
          'linkContrat': linkContrat,
          'accompagnementUserName': accompagnementUserName,
          'accompagnementLastName': accompagnementLastName,
          'accompagnementProjectName': accompagnementProjectName,
          'paymentDate': paymentDate,
          'endAt': endAt,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }
}

class UpdateAccompagnementCall {
  Future<ApiCallResponse> call({
    String? accIds = '',
    double? amount,
    String? status = '',
    String? paymentDate = '',
    String? startAt = '',
    String? endAt = '',
    String? linkContrat = '',
    String? accompagnementLastName = '',
    String? accompagnementUserName = '',
    String? accompagnementProjectName = '',
    String? satisfactionClient = '',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'UpdateAccompagnementCall',
        'variables': {
          'accIds': accIds,
          'amount': amount,
          'status': status,
          'paymentDate': paymentDate,
          'startAt': startAt,
          'endAt': endAt,
          'linkContrat': linkContrat,
          'accompagnementLastName': accompagnementLastName,
          'accompagnementUserName': accompagnementUserName,
          'accompagnementProjectName': accompagnementProjectName,
          'satisfactionClient': satisfactionClient,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }
}

class GetcotisationbyuserIdsCall {
  Future<ApiCallResponse> call({
    String? userId = '',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'GetcotisationbyuserIdsCall',
        'variables': {
          'userId': userId,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }

  List<int>? ids(dynamic response) => (getJsonField(
        response,
        r'''$.entity.dtos[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<double>? amounts(dynamic response) => (getJsonField(
        response,
        r'''$.entity.dtos[:].amount''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  List<String>? payementDate(dynamic response) => (getJsonField(
        response,
        r'''$.entity.dtos[:].paymentDate''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? comments(dynamic response) => (getJsonField(
        response,
        r'''$.entity.dtos[:].comment''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? type(dynamic response) => (getJsonField(
        response,
        r'''$.entity.dtos[:].financeType''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  double? total(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.entity.total''',
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
