import 'package:flutter/material.dart';

class CommonDrawer extends StatelessWidget {
  final List<Widget> menuItems;

  const CommonDrawer({Key? key, required this.menuItems}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[Column(

        )],
      ),
    );
  }
}
