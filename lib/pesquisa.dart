import 'package:flutter/material.dart';
import 'package:flutter_application_edutico/card_produto.dart';
import 'package:flutter_application_edutico/produto.dart';

class Pesquisa extends StatefulWidget {
  final List<Produto> produtos;

  const Pesquisa({Key? key, required this.produtos}) : super(key: key);

  @override
  _PesquisaState createState() => _PesquisaState();
}

class _PesquisaState extends State<Pesquisa> {
  // Lista filtrada para exibir os produtos de acordo com a pesquisa
  List<Produto> produtosFiltrados = [];

  // Controlador do campo de pesquisa
  TextEditingController searchController = TextEditingController();

  // Função de pesquisa
  void filtroPesquisa(String query) {
    if (query.isNotEmpty) {
      List<Produto> dummyList = widget.produtos.where((produto) {
        return produto.nome.toLowerCase().contains(query.toLowerCase());
      }).toList();
      setState(() {
        produtosFiltrados = dummyList;
      });
    } else {
      setState(() {
        produtosFiltrados = [];
      });
    }
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
            TextField(
              controller: searchController,
              onChanged: (value) {
                filtroPesquisa(value);
              },
              autofocus: true, // Abre o teclado automaticamente
              decoration: InputDecoration(
                hintText: 'Pesquisar',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                contentPadding: const EdgeInsets.symmetric(vertical: 10),
              ),
            ),
            const SizedBox(height: 40),

            // Exibe a mensagem "Resultados para 'termo de pesquisa'"
            searchController.text.isNotEmpty //se a caixa de texto não estiver vazia, apresentar um texto concatenando a variavel que corresponde a pesquisa
                ? Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Text(
                      'Resultados para "${searchController.text}"',
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Glacial Indifference'
                      ),
                    ),
                  )
                  : const SizedBox(height: 20),


            produtosFiltrados.isEmpty && searchController.text.isNotEmpty //se não houver produtos correspondentes a pesquisa e a caixa de texto da pesquisa não estiver vazia apresentar uma mensagem que o produto não foi encontrado
                ? const Center(
                    child: Column(
                      children: [
                        Icon(Icons.error_outline, size: 60, color: Colors.red),
                        SizedBox(height: 10),
                        Text(
                          'Nenhum produto encontrado.',
                          style: TextStyle(
                            fontSize: 18, 
                            color: Colors.red,
                            fontFamily: 'Glacial Indifference'),
                        ),
                      ],
                    ),
                  )


                : produtosFiltrados.isEmpty && searchController.text.isEmpty //quando o usuario entra na tela de pesquisa e não digita nada 
                    ? Expanded(
                        child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Image.asset(
                              'assets/catavento.png',
                              fit: BoxFit.cover,
                              width: MediaQuery.of(context).size.width, 
                            ),
                          ),
                      )
                      

                    : Expanded(
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

