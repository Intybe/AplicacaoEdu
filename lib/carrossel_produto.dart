import 'package:flutter/material.dart';
import 'package:flutter_application_edutico/produto.dart';

// Classe CarrosselProduto agora aceita um Produto como argumento
class CarrosselProduto extends StatefulWidget {
  final Produto produtos;  // Produto passado para o carrossel

  CarrosselProduto({required this.produtos});

  @override
  _CarrosselProdutoState createState() => _CarrosselProdutoState();
}

class _CarrosselProdutoState extends State<CarrosselProduto> {
  int _currentPage = 0;
  final PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose(); // Certifique-se de liberar o controlador quando o widget for descartado
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Aqui, utilizamos as imagens do produto passado como argumento
    List<String> images = [
      widget.produtos.img1,
      widget.produtos.img2,
      widget.produtos.img3,
    ];

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Carrossel de imagens
        SizedBox(
          height: 350, 
          width: 400,
          child: PageView.builder(
            controller: _pageController,
            itemCount: images.length,
            onPageChanged: (index) {
              setState(() {
                _currentPage = index;
              });
            },
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0), // Cantos arredondados
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200], // Cor de fundo quando a imagem está carregando
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 10,
                          spreadRadius: 2,
                        ),
                      ],
                    ),
                    child: Image.asset(
                      images[index],
                      fit: BoxFit.cover,
                      width: double.infinity, // A imagem preenche toda a largura
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        const SizedBox(height: 10),

        // Indicadores de página (os pontinhos)
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(images.length, (index) {
            return GestureDetector(
              onTap: () {
                // Muda a página do PageController quando a bolinha é clicada
                _pageController.animateToPage(
                  index,
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                );
              },
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                margin: const EdgeInsets.symmetric(horizontal: 5),
                width: _currentPage == index ? 12 : 8, // O indicador da página atual é maior
                height: _currentPage == index ? 12 : 8, // O indicador da página atual é maior
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _currentPage == index ? Colors.blue : Colors.grey,
                ),
              ),
            );
          }),
        ),
      ],
    );
  }
}
