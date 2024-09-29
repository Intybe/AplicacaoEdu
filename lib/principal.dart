import 'package:flutter/material.dart';
import 'package:flutter_application_edutico/filtro_button.dart';
import 'package:flutter_application_edutico/card_produto.dart';
import 'package:flutter_application_edutico/produto.dart';
import 'package:flutter_application_edutico/pesquisa.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Produto> produtos = [
    Produto(nome: 'Encaixe de Formas Geométricas', preco: 'R\$ 30,00', img1: 'assets/prod1.jpeg', img2: 'assets/prod1.jpeg', img3: 'assets/prod1.jpeg', descri: 'lakjhu', faixaEtaria: 1, precoAnt: 'R\$ 60,00', precoParc: '10x de R\$ 60,00', estoque: 'Em estoque'),
    Produto(nome: 'Encaixe de Formas Geométricas', preco: 'R\$ 30,00', img1: 'assets/prod1.jpeg', img2: 'assets/prod1.jpeg', img3: 'assets/prod1.jpeg', descri: 'klhjhkjb', faixaEtaria: 3, precoAnt: 'R\$ 60,00', precoParc: '10x de R\$ 60,00', estoque: 'Indisponível'),
    Produto(nome: 'evelyn', preco: 'R\$ 40,00', img1: 'assets/prod1.jpeg', img2: 'assets/prod1.jpeg', img3: 'assets/prod1.jpeg', descri: 'jhiuohnh', faixaEtaria: 6, precoAnt: 'R\$ 60,00', precoParc: '10x de R\$ 60,00', estoque: 'Em estoque'),
    Produto(nome: 'leticia', preco: 'R\$ 50,00', img1: 'assets/prod1.jpeg', img2: 'assets/prod1.jpeg', img3: 'assets/prod1.jpeg', descri: 'hihoihnjn', faixaEtaria: 10, precoAnt: 'R\$ 60,00', precoParc: '10x de R\$ 60,00', estoque: 'Em estoque'),
    Produto(nome: 'leticia', preco: 'R\$ 50,00', img1: 'assets/prod1.jpeg', img2: 'assets/prod1.jpeg', img3: 'assets/prod1.jpeg', descri: 'hihoihnjn', faixaEtaria: 12, precoAnt: 'R\$ 60,00', precoParc: '10x de R\$ 60,00', estoque: 'Em estoque'),
  ];

  // Variável para armazenar a faixa etária selecionada
  int? faixaEtariaSelecionada;

  // Função para filtrar os produtos pela faixa etária
  List<Produto> get produtosFiltrados {
    if (faixaEtariaSelecionada == null) {
      return produtos; // Se nenhuma faixa etária foi selecionada, exibe todos os produtos
    }
    return produtos.where((produto) => produto.faixaEtaria <= faixaEtariaSelecionada!).toList();
  }

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
              thickness: 1, // Espessura da linha
              color: Colors.grey,
            ),

            // Espaço entre a barra de pesquisa e a linha
            const SizedBox(height: 20),

            // Filtros por idade
            SingleChildScrollView(
              scrollDirection: Axis.horizontal, // Rolagem horizontal
              child: Row(
                children: [
                  IdadeFiltroButton(label: 'Até 2 anos', onPressed: () {
                    setState(() {
                      faixaEtariaSelecionada = 2;
                    });
                  }),
                  const SizedBox(width: 10), // Espaçamento entre os botões
                  IdadeFiltroButtonAzul(label: '3+ anos', onPressed: () {
                    setState(() {
                      faixaEtariaSelecionada = 3;
                    });
                  }),
                  const SizedBox(width: 10),
                  IdadeFiltroButton(label: '6+ anos', onPressed: () {
                    setState(() {
                      faixaEtariaSelecionada = 6;
                    });
                  }),
                  const SizedBox(width: 10),
                  IdadeFiltroButtonAzul(label: '10+ anos', onPressed: () {
                    setState(() {
                      faixaEtariaSelecionada = 10;
                    });
                  }),
                  const SizedBox(width: 10),
                  IdadeFiltroButton(label: '12+ anos', onPressed: () {
                    setState(() {
                      faixaEtariaSelecionada = 12;
                    });
                  }),
                ],
              ),
            ),

            const SizedBox(height: 20),
            const Text(
              'TODOS OS PRODUTOS',
              style: TextStyle(
                fontSize: 18, 
                fontWeight: FontWeight.bold, 
                color: Color(0xFF385BD2),
                fontFamily: 'Edutico'),
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
                itemCount: produtosFiltrados.length,
                itemBuilder: (context, index) {
                  return card_produto(produto: produtosFiltrados[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
