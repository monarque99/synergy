import 'package:rxdart/rxdart.dart';

import 'custom_auth_manager.dart';

class SynergyAuthUser {
  SynergyAuthUser({required this.loggedIn, this.uid});

  bool loggedIn;
  String? uid;
}

/// Generates a stream of the authenticated user.
BehaviorSubject<SynergyAuthUser> synergyAuthUserSubject =
    BehaviorSubject.seeded(SynergyAuthUser(loggedIn: false));
Stream<SynergyAuthUser> synergyAuthUserStream() => synergyAuthUserSubject
    .asBroadcastStream()
    .map((user) => currentUser = user);
