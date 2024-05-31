import 'package:flutter/material.dart';
import '../../page/auth_gate.dart';

class AppRouter {
  Map<String, Widget Function(BuildContext)> routes = {
    '/': (context) => const AuthGate(),
  };

  Map<String, Widget Function(BuildContext)> get appRoutes {
    return routes;
  }
}