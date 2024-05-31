import 'package:flutter/material.dart';
import 'package:client/theme/main_theme.dart';
import 'package:client/service/router/app_router.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MaterialApp(
    initialRoute: '/',
    routes: AppRouter().appRoutes,
    theme: MainTheme().applyMainTheme,
  ));
}

