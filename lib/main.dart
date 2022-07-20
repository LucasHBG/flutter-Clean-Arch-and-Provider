import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:test_app/login_screen.dart';

Future<void> main() async {
  final router = GoRouter(
    routes: [
      GoRoute(
        path: '/login',
        pageBuilder: (context, state) => MaterialPage(
          key: state.pageKey,
          child: const LoginScreen(),
        ),
      ),
    ],
    //Handle all errors related to a route that dont exists
    errorPageBuilder: (context, state) => MaterialPage(
      key: state.pageKey,
      child: Scaffold(
        body: Center(child: Text(state.error.toString())),
      ),
    ),
  );

  WidgetsFlutterBinding.ensureInitialized();

  runZonedGuarded<Future<void>>(
    () async {
      await SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp],
      );

      runApp(
        MaterialApp.router(
          routeInformationParser: router.routeInformationParser,
          routerDelegate: router.routerDelegate,
          debugShowCheckedModeBanner: false,
          themeMode: ThemeMode.system,
        ),
      );
    },
    (error, stackTrace) async {
      //Verifies if your applications is in debug mode
      if (kDebugMode) {
        print('Caught Dart Error!');
        print('$error');
        print('$stackTrace');
      }
    },
  );

}
