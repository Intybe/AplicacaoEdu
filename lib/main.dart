import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter_application_edutico/principal.dart'; // Para usar Future.delayed

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'tela de splash',
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Espera 3 segundos antes de navegar para a tela principal
    Timer(const Duration(seconds: 7), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => HomeScreen(),
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFEF8), // Cor de fundo da splash screen
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/logoEdu.png'), // Logo da splash screen
            const SizedBox(height: 20), // Espaçamento entre o logo e o indicador
            SizedBox(
              width: 90,
              child: LinearProgressIndicator(
                valueColor: const AlwaysStoppedAnimation<Color>(Colors.blue), // Cor do indicador
                backgroundColor: Colors.grey[300], // Cor de fundo da barra
              ),
            ),
          ],
    ),
  ),
  );
  }
}

