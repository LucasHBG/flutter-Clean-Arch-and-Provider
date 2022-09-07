import 'package:flutter/material.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Notifcations")),
      body: Column(
        children: [
          Column(
            children: const [
              Text("What's New"),
              Text(
                  "The lastest releases from artits, podcasts, and shows you follow."),
            ],
          ),
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Row(
                children: [
                  const Icon(Icons.person),
                  Column(
                    children: const [
                      Text("8 hr ago"),
                      Text(
                          "PrimoCast 199 | COMO VENDER: MÉTODO DE VENDAS QUE SEMPRE FUNCIONA",
                          overflow: TextOverflow.ellipsis),
                      Text("Primocast"),
                    ],
                  ),
                ],
              );
            },
          )
        ],
      ),
    );
  }
}
