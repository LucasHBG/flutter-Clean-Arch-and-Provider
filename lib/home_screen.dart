import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //For BottomNavigationBar
    int currentIndex = 0;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Good Evening'),
                Row(
                  children: const [
                    IconButton(
                        onPressed: null, icon: Icon(Icons.notifications)),
                    IconButton(onPressed: null, icon: Icon(Icons.history)),
                    IconButton(
                        onPressed: null, icon: Icon(Icons.settings_outlined)),
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
            )
          ],
        ),
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: currentIndex,
        destinations: const <NavigationDestination>[
          NavigationDestination(icon: Icon(Icons.home), label: "Home"),
          NavigationDestination(icon: Icon(Icons.search), label: 'Search'),
          NavigationDestination(
              icon: Icon(Icons.library_music), label: 'Your Library'),
        ],
        // onDestinationSelected: (int index) {
        //   setState(() => currentIndex = index;);
        // },
      ),
    );
  }
}
