import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:test_app/res/constants/route_names.dart';

import '/view/home_config/collection/collection_page.dart';
import '/view/home_config/search/search_page.dart';
import 'home/home_page.dart';

/// Implicit configuration page that handles
/// tab switchs from bottom navigation widget
class HomeConfigPage extends StatefulWidget {
  final int index;

  HomeConfigPage({required String? tab, Key? key})
      : index = indexFrom(tab),
        super(key: key);

  @override
  State<HomeConfigPage> createState() => _HomeConfigPageState();

  static int indexFrom(String? tab) {
    switch (tab) {
      case 'search':
        return 1;

      case 'collection':
        return 2;

      case 'home':
      default:
        return 0;
    }
  }
}

class _HomeConfigPageState extends State<HomeConfigPage> {
  //For BottomNavigationBar
  late int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: const [HomePage(), SearchPage(), CollectionPage()],
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _selectedIndex,
        destinations: const <NavigationDestination>[
          NavigationDestination(icon: Icon(Icons.home), label: "Home"),
          NavigationDestination(icon: Icon(Icons.search), label: 'Search'),
          NavigationDestination(
              icon: Icon(Icons.library_music), label: 'Your Library'),
        ],
        onDestinationSelected: (int index) {
          setState(
            () {
              _selectedIndex = index;
              switch (index) {
                case 0:
                  context.goNamed(homeRouteName);
                  break;

                case 1:
                  context.goNamed(searchRouteName);
                  break;

                case 2:
                  context.goNamed(collectionRouteName);
                  break;
              }
            },
          );
        },
      ),
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _selectedIndex = widget.index;
  }

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.index;
  }
}
