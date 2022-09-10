import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '/router/routes.dart';
import '/view_models/login_state.dart';
import 'res/app_context_extension.dart';
import 'view_models/users_list_vm.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  /// Get instance of LoginState class
  final state = LoginState(await SharedPreferences.getInstance());
  state.checkLoggedIn();

  runZonedGuarded<Future<void>>(
    () async {
      await SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp],
      );

      runApp(MyApp(loginState: state));
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

  //Catch plataform especific errors and shows them
  FlutterError.onError = (FlutterErrorDetails details) async {
    final dynamic exception = details.exception;
    final StackTrace? stackTrace = details.stack;

    if (kDebugMode) {
      print('Caught Framework Error!');
      //In development mode simply print to console
      FlutterError.dumpErrorToConsole(details);
    } else {
      //In production mode report to the application zone
      Zone.current.handleUncaughtError(exception, stackTrace!);
    }
  };
}

class MyApp extends StatelessWidget {
  final LoginState loginState;

  const MyApp({Key? key, required this.loginState}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        // Configuring login state and routes
        ChangeNotifierProvider(
          lazy: false,
          create: (BuildContext createContext) => loginState,
        ),
        Provider(
          lazy: false,
          create: (BuildContext createContext) => MyRouter(loginState),
        ),

        // Others routes to be configured
        ChangeNotifierProvider(
          lazy: false,
          create: (context) => UsersListVM(),
        ),
      ],
      child: Builder(
        builder: (BuildContext context) {
          final router = Provider.of<MyRouter>(context, listen: false).router;
          return MaterialApp.router(
            routeInformationParser: router.routeInformationParser,
            routerDelegate: router.routerDelegate,
            routeInformationProvider: router.routeInformationProvider,
            debugShowCheckedModeBanner: false,
            title: 'Clean Arch',
            theme: themeConfiguration(context),
          );
        },
      ),
    );
  }

  ThemeData themeConfiguration(BuildContext context) {
    return ThemeData(
      fontFamily: 'Roboto',
      primarySwatch: context.resources.color.colorPrimary,
      scaffoldBackgroundColor: context.resources.color.colorBackground,
      backgroundColor: context.resources.color.colorBackground,
      canvasColor: context.resources.color.colorBackground,
      textTheme: TextTheme(
        headlineLarge: TextStyle(color: context.resources.color.colorWhite),
        headlineMedium: TextStyle(color: context.resources.color.colorWhite),
        headlineSmall: TextStyle(color: context.resources.color.colorWhite),
        bodyLarge: TextStyle(color: context.resources.color.colorWhite),
        bodyMedium: TextStyle(color: context.resources.color.colorWhite),
        bodySmall: TextStyle(
            color: context.resources.color.colorWhite.withOpacity(0.7)),
        displayLarge: TextStyle(color: context.resources.color.colorWhite),
        displayMedium: TextStyle(color: context.resources.color.colorWhite),
        displaySmall: TextStyle(
            color: context.resources.color.colorWhite.withOpacity(0.7)),
        titleLarge: TextStyle(color: context.resources.color.colorWhite),
        titleMedium: TextStyle(color: context.resources.color.colorWhite),
        titleSmall: TextStyle(
            color: context.resources.color.colorWhite.withOpacity(0.7)),
        labelLarge: TextStyle(color: context.resources.color.colorWhite),
        labelMedium: TextStyle(color: context.resources.color.colorWhite),
        labelSmall: TextStyle(
            color: context.resources.color.colorWhite.withOpacity(0.7)),
      ),
      navigationBarTheme: NavigationBarThemeData(
        backgroundColor: context.resources.color.colorBackground,
        // The color when the item is selected
        indicatorColor: context.resources.color.colorNeutral,
        iconTheme: MaterialStateProperty.resolveWith(
          (states) {
            if (states.contains(MaterialState.selected)) {
              return IconThemeData(
                  color: context.resources.color.colorSecondary);
            }

            return IconThemeData(color: context.resources.color.colorSecondary);
          },
        ),
        labelTextStyle: MaterialStateProperty.resolveWith(
          (states) {
            if (states.contains(MaterialState.selected)) {
              return TextStyle(color: context.resources.color.colorSecondary);
            }

            return TextStyle(color: context.resources.color.colorSecondary);
          },
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        labelStyle: TextStyle(color: context.resources.color.colorWhite),
        // Text displayed on every input field
        hintStyle: TextStyle(
            color: context.resources.color.colorWhite.withOpacity(0.7)),
      ),
      listTileTheme:
          ListTileThemeData(tileColor: context.resources.color.colorNeutral),
    );
  }
}
