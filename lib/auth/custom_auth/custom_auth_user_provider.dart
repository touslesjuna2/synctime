import 'package:rxdart/rxdart.dart';

import 'custom_auth_manager.dart';

class SynctimeAuthUser {
  SynctimeAuthUser({required this.loggedIn, this.uid});

  bool loggedIn;
  String? uid;
}

/// Generates a stream of the authenticated user.
BehaviorSubject<SynctimeAuthUser> synctimeAuthUserSubject =
    BehaviorSubject.seeded(SynctimeAuthUser(loggedIn: false));
Stream<SynctimeAuthUser> synctimeAuthUserStream() => synctimeAuthUserSubject
    .asBroadcastStream()
    .map((user) => currentUser = user);
