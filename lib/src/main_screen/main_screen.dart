import 'package:flutter/material.dart';

import '../details_screen/details_screen.dart';
import '../navigation/image_switcher.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main Screen'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text('Show Details'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DetailsScreen(),
                ),
              );
            },
          ),
          ListTile(
            title: const Text('Navigate'),
            onTap: () {
              Navigator.pushNamed(context, ImageSwitcher.routeName);
            },
          ),
        ],
      ),
    );
  }
}
