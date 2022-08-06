import 'package:flutter/material.dart';

class MyErrorWidget extends StatelessWidget {
  final String message;

  const MyErrorWidget(this.message, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10.0),
        child: Text('Erro! $message'),
      ),
    );
  }
}
