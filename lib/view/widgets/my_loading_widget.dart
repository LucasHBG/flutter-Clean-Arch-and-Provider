import 'package:flutter/material.dart';

class MyLoadingWidget extends StatelessWidget {
  const MyLoadingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          CircularProgressIndicator(),
          SizedBox(
            height: 8,
          ),
          Text(
            'Loading...',
          )
        ],
      ),
    );
  }
}
