import 'dart:async';
import 'package:angel_framework/angel_framework.dart';
import 'options.dart';

/// A function that handles login and signup for an Angel application.
abstract class AuthStrategy {
  String name;

  /// Authenticates or rejects an incoming user.
  Future authenticate(RequestContext req, ResponseContext res,
      [AngelAuthOptions options]);

  /// Determines whether a signed-in user can log out or not.
  Future<bool> canLogout(RequestContext req, ResponseContext res);
}
