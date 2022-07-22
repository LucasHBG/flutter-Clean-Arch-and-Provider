import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Good Evening'),
              Row(
                children: const [
                  IconButton(onPressed: null, icon: Icon(Icons.notifications)),
                  IconButton(onPressed: null, icon: Icon(Icons.history)),
                  IconButton(
                      onPressed: null, icon: Icon(Icons.settings_outlined)),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
