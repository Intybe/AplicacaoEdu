import 'package:flutter/material.dart';
import 'package:flutter_application_edutico/filtro_idade.dart';
import 'package:flutter_application_edutico/card_produto.dart';
import 'package:flutter_application_edutico/produto.dart';
import 'package:flutter_application_edutico/pesquisa.dart'; // Import da tela de pesquisa

class HomeScreen extends StatelessWidget {
  final List<Produto> produtos = [
    Produto(nome: 'Encaixe de Formas Geométricas', preco: 'R\$ 30,00', img: 'assets/prod1.jpeg', descri: ''),
    Produto(nome: 'Encaixe de Formas Geométricas', preco: 'R\$ 30,00', img: 'assets/prod1.jpeg', descri: ''),
    Produto(nome: 'evelyn', preco: 'R\$ 40,00', img: 'assets/prod1.jpeg', descri: ''),
    Produto(nome: 'leticia', preco: 'R\$ 50,00', img: 'assets/prod1.jpeg', descri: ''),
  ];

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/logoNome.png', height: 40), // Logo
            const SizedBox(width: 10),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                // Navegar para a tela de pesquisa
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Pesquisa(produtos: produtos),
                  ),
                );
              },
              child: TextField(
                enabled: false, // O campo não pode ser editado, apenas navega
                decoration: InputDecoration(
                  hintText: 'Pesquisar',
                  prefixIcon: const Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  contentPadding: const EdgeInsets.symmetric(vertical: 10), // Reduz a altura
                ),
              ),
            ),

            const SizedBox(height: 20),
            const Divider(
              thickness: 1,// Espessura da linha
              color: Colors.grey,
            ),

            // Espaço entre a barra de pesquisa e a linha
            const SizedBox(height: 20),

            // Filtros por idade
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal, // Rolagem horizontal
              child: Row(
                children: [
                  IdadeFiltroButton(label: 'Até 2 anos'),
                  SizedBox(width: 10), // Espaçamento entre os botões
                  IdadeFiltroButtonAzul(label: '3+ anos'),
                  SizedBox(width: 10),
                  IdadeFiltroButton(label: '6+ anos'),
                  SizedBox(width: 10),
                  IdadeFiltroButtonAzul(label: '10+ anos'),
                  SizedBox(width: 10),
                  IdadeFiltroButton(label: '12+ anos'),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'MAIS VENDIDOS',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color(0xFF385BD2)),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  childAspectRatio: 0.7,
                ),
                itemCount: produtos.length,
                itemBuilder: (context, index) {
                  return card_produto(produto: produtos[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
