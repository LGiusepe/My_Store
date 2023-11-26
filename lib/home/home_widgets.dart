import 'package:flutter/material.dart';

AppBar getHomeAppBar() {
  return AppBar(
    title: const Text('Minha Loja'),
    centerTitle: true,

    // backgroundColor: Colors.black,
  );
}

Drawer getDrawerHome() {
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: const <Widget>[
        DrawerHeader(
          // decoration: BoxDecoration(
          //   color: Colors.grey,
          // ),
          child: Text(
            'Menu',
            style: TextStyle(
              // color: Colors.black,
              fontSize: 24,
            ),
          ),
        ),
        ListTile(
          leading: Icon(Icons.account_circle),
          title: Text('Profile'),
          // onTap: ,
        ),
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
