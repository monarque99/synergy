import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
  set userName(String value) {
    _userName = value;
    prefs.setString('ff_userName', value);
  }

  String _userFirstName = '';
  String get userFirstName => _userFirstName;
  set userFirstName(String value) {
    _userFirstName = value;
    prefs.setString('ff_userFirstName', value);
  }

  String _userRole = '';
  String get userRole => _userRole;
  set userRole(String value) {
    _userRole = value;
    prefs.setString('ff_userRole', value);
  }

  String _userTel = '';
  String get userTel => _userTel;
  set userTel(String value) {
    _userTel = value;
    prefs.setString('ff_userTel', value);
  }

  String _userEmail = '';
  String get userEmail => _userEmail;
  set userEmail(String value) {
    _userEmail = value;
    prefs.setString('ff_userEmail', value);
  }

  String _userImageProfile = '';
  String get userImageProfile => _userImageProfile;
  set userImageProfile(String value) {
    _userImageProfile = value;
    prefs.setString('ff_userImageProfile', value);
  }

  String _userId = '';
  String get userId => _userId;
  set userId(String value) {
    _userId = value;
    prefs.setString('ff_userId', value);
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
