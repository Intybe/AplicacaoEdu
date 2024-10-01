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
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [ 
              // Carrossel das imagens
              SizedBox(
                child: CarrosselProduto(produtos: produtos),
              ),

              const SizedBox(height: 20),

              // Nome do Produto
              Text(
                produtos.nome, 
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Glacial Indifference Bold'
                ),
              ),

              const SizedBox(height: 10),
              
              // Preço e Status de Estoque
              Card(
                color: const Color.fromRGBO(249, 249, 249, 0.976),
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            produtos.precoAnt, // Preço anterior
                            style: const TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                              fontFamily: 'Glacial Indifference',
                              decoration: TextDecoration.lineThrough,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            produtos.preco, // Novo preço
                            style: const TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF385BD2),
                              fontFamily: 'Glacial Indifference Bold'
                            ),
                          ),
                          Text(
                            'ou ${produtos.precoParc}', 
                            style: const TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                              fontFamily: 'Glacial Indifference'),
                          ),
                        ],
                      ),
                      Text(
                        produtos.estoque, // Exibe o status de estoque
                        style: TextStyle(
                          color: produtos.estoque == 'Indisponível'
                              ? Colors.red 
                              : Colors.green, 
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          fontFamily: 'Glacial Indifference'
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 20),
              
              // Descrição do Produto
              Card(
                color: const Color.fromRGBO(249, 249, 249, 0.976),
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
             const Text(
                'DESCRIÇÃO DO PRODUTO',
                style: TextStyle(
                  fontFamily: 'Edutico',
                  color: Color(0xFF385BD2),
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
          
              Text(
                produtos.descri,
                style: const TextStyle(
                  fontSize: 16, 
                  height: 1.5,
                  fontFamily: 'Glacial Indifference'),
                
              ),
                    ]
                    ),
            ],
          ),
        ),
      ),
    ]
    ),
        
    ),
    ), 
    );
  }
}
