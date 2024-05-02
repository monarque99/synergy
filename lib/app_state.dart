import 'package:flutter/material.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _userName = prefs.getString('ff_userName') ?? _userName;
    });
    _safeInit(() {
      _userFirstName = prefs.getString('ff_userFirstName') ?? _userFirstName;
    });
    _safeInit(() {
      _userRole = prefs.getString('ff_userRole') ?? _userRole;
    });
    _safeInit(() {
      _userTel = prefs.getString('ff_userTel') ?? _userTel;
    });
    _safeInit(() {
      _userEmail = prefs.getString('ff_userEmail') ?? _userEmail;
    });
    _safeInit(() {
      _userImageProfile =
          prefs.getString('ff_userImageProfile') ?? _userImageProfile;
    });
    _safeInit(() {
      _userId = prefs.getString('ff_userId') ?? _userId;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _userName = '';
  String get userName => _userName;
  set userName(String _value) {
    _userName = _value;
    prefs.setString('ff_userName', _value);
  }

  String _userFirstName = '';
  String get userFirstName => _userFirstName;
  set userFirstName(String _value) {
    _userFirstName = _value;
    prefs.setString('ff_userFirstName', _value);
  }

  String _userRole = '';
  String get userRole => _userRole;
  set userRole(String _value) {
    _userRole = _value;
    prefs.setString('ff_userRole', _value);
  }

  String _userTel = '';
  String get userTel => _userTel;
  set userTel(String _value) {
    _userTel = _value;
    prefs.setString('ff_userTel', _value);
  }

  String _userEmail = '';
  String get userEmail => _userEmail;
  set userEmail(String _value) {
    _userEmail = _value;
    prefs.setString('ff_userEmail', _value);
  }

  String _userImageProfile = '';
  String get userImageProfile => _userImageProfile;
  set userImageProfile(String _value) {
    _userImageProfile = _value;
    prefs.setString('ff_userImageProfile', _value);
  }

  String _userId = '';
  String get userId => _userId;
  set userId(String _value) {
    _userId = _value;
    prefs.setString('ff_userId', _value);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
