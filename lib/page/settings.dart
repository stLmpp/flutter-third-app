import 'package:flutter/material.dart';
import 'package:third_app/widget/main_drawer.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      drawer: const MainDrawer(),
      body: Container(
        child: Center(
          child: Text('Settings'),
        ),
      ),
    );
  }

  static const routeName = '/settings';
}
