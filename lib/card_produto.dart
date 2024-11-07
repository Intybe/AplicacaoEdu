
import 'package:flutter/material.dart';
import 'package:flutter_application_edutico/detalhe_produto.dart';
import 'package:flutter_application_edutico/produto.dart';

class card_produto extends StatelessWidget {
  final Produto produto; // Adicionando o produto

  const card_produto({super.key, required this.produto});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => DetalheProduto(produtos: produto),
        ),
      ),
      child: FractionallySizedBox(
        widthFactor: 1, // Define a largura como 90% da tela
        child: Card(
          color: const Color.fromRGBO(249, 249, 249, 0.976),
          elevation: 3,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    produto.img1,
                    height: 150, // Ajusta a altura da imagem
                    width: double.infinity, // Ajusta a largura para preencher o card
                    fit: BoxFit.cover, // Ajusta a imagem para cobrir o espaço
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  produto.nome,
                  style: const TextStyle(
                    fontSize: 18,
                    fontFamily: 'Glacial Indifference Bold',
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis, // Garante que o texto não saia da área
                ),
                const SizedBox(height: 4),
                Text(
                  produto.preco,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF385BD2),
                    fontSize: 18,
                    fontFamily: 'Glacial Indifference Bold',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
