import 'package:flutter/material.dart';

class HomeYes extends StatefulWidget {
  const HomeYes({super.key});

  @override
  State<HomeYes> createState() => _HomeYesState();
}

class _HomeYesState extends State<HomeYes> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.green,
        foregroundColor: Colors.black,
      ),
      onPressed: () {
        Navigator.of(context).pushReplacementNamed('/login');
      },
      child: const Text(
        'Sim, tenho mais de 18 anos',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontFamily: 'Montserrat',
          fontSize: 20,
        ),
      ),
    );
  }
}
