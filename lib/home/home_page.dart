import 'package:flutter/material.dart';
import '../home/home_no.dart';
import '../home/home_yes.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage("assets/logo.jpg"),
            ),
            SizedBox(height: 16),
            Text(
              'Você é maior de 18 anos?',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: 'Montserrat',
                fontSize: 30,
              ),
            ),
            HomeYes(),
            HomeNo(),
          ],
        ),
      ),
    );
  }
}
