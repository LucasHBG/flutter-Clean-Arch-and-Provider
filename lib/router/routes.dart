import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:test_app/res/constants/route_names.dart';
import 'package:test_app/view/home_config/home/notifications/notifications_page.dart';
import 'package:test_app/view/home_config/home/recently_played_history/recently_played_history_page.dart';
import 'package:test_app/view_models/login_state.dart';

import '../view/create_account_page.dart';
import '../view/home_config/home_config_page.dart';
import '../view/login_page.dart';
import '../view/user_list_mgmt_page.dart';

class MyRouter {
  final LoginState loginState;

  MyRouter(this.loginState);

  late final router = GoRouter(
    refreshListenable: loginState,
    debugLogDiagnostics: true,
    urlPathStrategy: UrlPathStrategy.path,
    routes: [
      GoRoute(
        name: rootRouteName,
        path: '/',
        redirect: (state) =>
            state.namedLocation(homeRouteName, params: {'tab': 'home'}),
      ),
      GoRoute(
        name: loginRouteName,
        path: '/login',
        pageBuilder: (context, state) => MaterialPage<void>(
          key: state.pageKey,
          child: const LoginPage(),
        ),
      ),
      GoRoute(
        name: createAccountRouteName,
        path: '/create-account',
        pageBuilder: (context, state) => MaterialPage<void>(
          key: state.pageKey,
          child: const CreateAccountPage(),
        ),
      ),
      GoRoute(
        name: homeRouteName,
        path: '/:tab(home|search|collection)',
        pageBuilder: (context, state) {
          final String? tab = state.params['tab'];
          return MaterialPage<void>(
            key: state.pageKey,
            child: HomeConfigPage(tab: tab),
          );
        },
        routes: [
          GoRoute(
            name: notificationsRouteName,
            path: 'notifications',
            pageBuilder: (context, state) {
              return MaterialPage<void>(
                key: state.pageKey,
                child: const NotificationsPage(),
              );
            },
          ),
          GoRoute(
            name: recentlyPlayedHistoryRouteName,
            path: 'recently-played',
            pageBuilder: (context, state) {
              return MaterialPage<void>(
                key: state.pageKey,
                child: const RecentlyPlayedHistoryPage(),
              );
            },
          ),
        ],
      ),

      // forwarding routes to remove the need to put the 'tab' param in the code
      GoRoute(
        path: '/home',
        redirect: (state) =>
            state.namedLocation(homeRouteName, params: {'tab': 'home'}),
      ),
      GoRoute(
        path: '/search',
        redirect: (state) =>
            state.namedLocation(homeRouteName, params: {'tab': 'search'}),
      ),
      GoRoute(
        path: '/collection',
        redirect: (state) =>
            state.namedLocation(homeRouteName, params: {'tab': 'collection'}),
      ),
      GoRoute(
        path: '/user-list-mgmt',
        pageBuilder: (context, state) => MaterialPage<void>(
          key: state.pageKey,
          child: const UserListMgmtPage(),
        ),
      )
    ],
    //Handle all errors related to a route that dont exists
    errorPageBuilder: (context, state) => MaterialPage<void>(
      key: state.pageKey,
      child: Scaffold(
        body: Center(child: Text(state.error.toString())),
      ),
    ),

    // redirect user to login page if he is not logged in
    redirect: (GoRouterState state) {
      /// Get name of the `login` route and
      /// verifies if user is currently at the `login` route
      final bool loggingIn = state.subloc == loginRouteName;

      /// Get name of the `create account` route and
      /// verifies if user is currently at `creating account` route
      final bool creatingAccount = state.subloc == createAccountRouteName;

      /// verifies if `user is already logged in` (or authenticated)
      final bool loggedIn = loginState.loggedIn;

      /// If user is not `logged in` nor trying to log in(at sign in page)
      /// nor trying to create account(at sign up page)
      /// then redirect him to the login page
      if (!loggedIn && !loggingIn && !creatingAccount) return loginRouteName;

      /// or else, redirect to home route
      if (loggedIn && (loggingIn || creatingAccount)) return homeRouteName;
      return null;
    },
  );
}
