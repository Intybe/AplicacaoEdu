import 'package:flutter/material.dart';

class IdadeFiltroButton extends StatelessWidget {
  final String label;

  const IdadeFiltroButton({super.key, required this.label});

  @override
Widget build(BuildContext context) {
  return ElevatedButton(
    onPressed: () {},
    style: ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100), // Arredondamento das bordas
          ), // Bordas arredondadas
      backgroundColor: const Color.fromARGB(255, 255, 189, 191), // Fundo vermelho claro
      side: const BorderSide(
        color: Color(0xFFE31B21), // Contorno vermelho escuro
        width: 1.0, // Espessura do contorno
      ),
      foregroundColor: const Color(0xFFE31B21), // Cor do texto (vermelho escuro)
    ),
    child: Text(
      label,
      style: const TextStyle(
        fontWeight: FontWeight.bold, // Opcional, para destacar o texto
      ),
    ),
  );
}
}

class IdadeFiltroButtonAzul extends StatelessWidget {
  final String label;

  const IdadeFiltroButtonAzul({super.key, required this.label});

  @override
Widget build(BuildContext context) {
  return ElevatedButton(
    onPressed: () {},
    style: ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100), // Arredondamento das bordas
          ), // Bordas arredondadas
      backgroundColor: const Color.fromARGB(255, 177, 189, 228), 
      side: const BorderSide(
        color: Color(0xFF385BD2),
        width: 1.0, // Espessura do contorno
      ),
      foregroundColor: const Color(0xFF385BD2), 
    ),
    child: Text(
      label,
      style: const TextStyle(
        fontWeight: FontWeight.bold, // Opcional, para destacar o texto
      ),
    ),
  );
}
}