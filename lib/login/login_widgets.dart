import 'package:flutter/material.dart';

Drawer getDrawerLogin() {
  return Drawer(
    surfaceTintColor: Colors.white,
    shadowColor: Colors.white,
    child: ListView(
      padding: EdgeInsets.zero,
      children: const <Widget>[
        DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.black,
          ),
          child: Text(
            'Menu',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
        ),
        // ListTile(
        //   leading: Icon(Icons.account_circle),
        //   title: Text('Profile'),
        //   // onTap: ,
        // ),
        ListTile(
          leading: Icon(Icons.local_grocery_store_outlined),
          title: Text('Store'),
          // onTap:
        ),
        ListTile(
          leading: Icon(Icons.settings),
          title: Text('Settings'),
          // onTap
        ),
      ],
    ),
  );
}
