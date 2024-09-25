import 'package:flutter/material.dart';
import 'package:flutter_application_edutico/produto.dart';


class Detalhe_produto extends StatelessWidget {
  const Detalhe_produto({super.key, required Produto produto});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFEF8),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFFEF8),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/logoNome.png', height: 40), // Logo
            const SizedBox(width: 10),
          ],
        ),
      )
    );
  }

}