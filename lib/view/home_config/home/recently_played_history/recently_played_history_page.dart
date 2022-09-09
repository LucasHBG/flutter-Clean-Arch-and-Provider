import 'package:flutter/material.dart';

class RecentlyPlayedHistoryPage extends StatelessWidget {
  const RecentlyPlayedHistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Recently Played")),
        body: const Center(
          child: Text('History'),
        ));
  }
}
