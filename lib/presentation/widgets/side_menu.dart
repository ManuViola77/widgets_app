import 'package:flutter/material.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({super.key});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  int navDrawerIndex = 0;

  @override
  Widget build(BuildContext context) {
    final hasNotch = MediaQuery.of(context).viewPadding.top > 35;

    return NavigationDrawer(
      selectedIndex: navDrawerIndex,
      onDestinationSelected: (index) {
        setState(() {
          navDrawerIndex = index;
        });
      },
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(28, hasNotch ? 10 : 20, 16, 10),
          child: Text('Menu'),
        ),
        NavigationDrawerDestination(
          icon: Icon(Icons.home),
          label: Text('Home'),
        ),
        NavigationDrawerDestination(
          icon: Icon(Icons.settings),
          label: Text('Settings'),
        ),
      ],
    );
  }
}
