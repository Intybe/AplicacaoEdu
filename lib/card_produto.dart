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
          builder: (context) => DetalheProduto(produtos:produto,),
        ),
      ),
      child: Card(
      color:const Color.fromRGBO(249, 249, 249, 0.976),
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
              borderRadius: BorderRadius.circular(15), // Arredondando as bordas da imagem
              child: 
            Image.asset(produto.img1,width: 220,height: 220,fit: BoxFit.cover) // Ajusta a imagem para cobrir o espaço)
            ),
            const SizedBox(height: 2, width: 5,),
            Text(
              produto.nome, 
              style: const TextStyle(fontWeight: FontWeight.bold, fontFamily: 'glacial'),
            ),
            const Spacer(),
            Text(
              produto.preco,
              style: const TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF385BD2), fontSize: 18),
            ),
          ],
        ),
      ),
      ),
    );
  }
}