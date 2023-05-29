import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(child: Text("This is drawer header")),
          ListTile(
            onTap: () {},
            leading: Icon(Icons.home_filled),
            trailing: Icon(Icons.arrow_forward),
            title: Text("this is title"),
          )
        ],
      ),
    );
  }
}
