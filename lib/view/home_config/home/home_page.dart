import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:test_app/view_models/login_state.dart';

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
              const Text('Good Evening'),
              Row(
                children: [
                  const IconButton(
                      onPressed: null, icon: Icon(Icons.notifications)),
                  const IconButton(onPressed: null, icon: Icon(Icons.history)),
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
