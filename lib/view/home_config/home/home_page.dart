import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../../../res/app_context_extension.dart';
import '/res/constants/route_names.dart';
import '/view_models/login_state.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              /// Say different types of greetings
              /// depending on the preferred language
              Text(context.resources.strings.greetingsHomeScreenTitle),
              Row(
                children: [
                  IconButton(
                      onPressed: () => context.goNamed(
                            notificationsRouteName,
                            params: {'tab': 'home'},
                          ),
                      icon: const Icon(Icons.notifications)),
                  IconButton(
                      onPressed: () => context.goNamed(
                            recentlyPlayedHistoryRouteName,
                            params: {'tab': 'home'},
                          ),
                      icon: const Icon(Icons.history)),
                  IconButton(
                      onPressed: () {
                        context.read<LoginState>().loggedIn = false;
                      },
                      icon: const Icon(Icons.settings_outlined)),
                ],
              ),
            ],
          ),
          GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 5.0,
            mainAxisSpacing: 5.0,
            childAspectRatio: 3.0,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: const [
              Card(color: Colors.blue, child: Text('card 1')),
              Card(color: Colors.amber, child: Text('card 2')),
              Card(color: Colors.red, child: Text("card 3")),
              Card(color: Colors.green, child: Text('card 4')),
              Card(color: Colors.black45, child: Text("card 5")),
              Card(color: Colors.purple, child: Text('card 6')),
            ],
          ),
          ElevatedButton(
            onPressed: () => GoRouter.of(context).go('/user-list-mgmt'),
            child: const Text('Ir p/ User + Provider'),
          ),
        ],
      ),
    );
  }
}
