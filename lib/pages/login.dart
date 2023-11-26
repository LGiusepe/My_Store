import 'package:flutter/material.dart';
import '../home/home_widgets.dart';
import '../login/login_page.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  int i = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getHomeAppBar(),
      body: const LoginPage(),
    );
  }
}
