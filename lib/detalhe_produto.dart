import 'package:flutter/material.dart';
import 'package:flutter_application_edutico/carrossel_produto.dart';
import 'package:flutter_application_edutico/produto.dart';

class DetalheProduto extends StatelessWidget {
  final Produto produtos; // Atributo para armazenar o produto passado

  const DetalheProduto({super.key, required this.produtos});
  
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
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical, // Rolagem horizontal
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [ 
              // Carrossel de Produto
              SizedBox(
                height: 200,
                child: CarrosselProduto(produtos: produtos),
              ),

              const SizedBox(height: 20),

              // Nome do Produto
              const Text(
                'Kit Monta Monta Trem Estrela 20pcs', 
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 10),
              
              // Preço e Status de Estoque
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'R\$ 700,00', // Preço anterior
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        produtos.preco, 
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                      const Text(
                        'ou 10x R\$ 60,00', 
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.green[100],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Text(
                      'Em estoque',
                      style: TextStyle(color: Colors.green),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              
              // Descrição do Produto
              const Text(
                'DESCRIÇÃO DO PRODUTO',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
          
              Text(
                produtos.descri,
                style: const TextStyle(fontSize: 16, height: 1.5),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
