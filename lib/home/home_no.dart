import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeNo extends StatefulWidget {
  const HomeNo({super.key});

  @override
  State<HomeNo> createState() => _HomeNoState();
}

class _HomeNoState extends State<HomeNo> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.red,
        foregroundColor: Colors.black,
      ),
      onPressed: () {
        SystemNavigator.pop(); // Esta linha encerra o aplicativo
      },
      child: const Text(
        'Não, tenho menos de 18 anos',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontFamily: 'Montserrat',
          fontSize: 20,
        ),
      ),
    );
  }
}
