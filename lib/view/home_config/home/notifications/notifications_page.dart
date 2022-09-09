import 'package:flutter/material.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Notifcations")),
      body: ListView(
        children: [
          const ListTile(
            title: Text("What's New"),
            subtitle: Text(
                "The lastest releases from artits, podcasts, and shows you follow."),
          ),
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 4,
            itemBuilder: (context, index) {
              return Card(
                child: Column(
                  children: const [
                    ListTile(
                      leading: Icon(Icons.person),
                      title: Text(
                        "PrimoCast 199 | COMO VENDER: MÉTODO DE VENDAS QUE SEMPRE FUNCIONA",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                      ),
                      subtitle: Text("Primocast - 8 hr ago"),
                    ),
                  ],
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
