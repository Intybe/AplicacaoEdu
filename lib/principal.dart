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
    Produto(nome: 'Jogo de Tabuleiro - Banco Imobiliário - Estrela', preco: 'R\$ 169,99', img1: 'assets/prod1_1.jpg', img2: 'assets/prod1_2.jpg', img3: 'assets/prod1_3.jpg', descri: 'O sucesso do Banco Imobiliário agora com realidade aumentada! O jogador poderá interagir e ver seus imóveis se formando no tabuleiro para uma experiência ainda mais completa, com mais diversão nesse clássico jogo clássico da Estrela.', faixaEtaria: 10, precoAnt: 'R\$ 199,99', precoParc: '10x de R\$ 18,00', estoque: 'Em estoque'),
    Produto(nome: 'Carreta Pedagógica - Especial para bebês', preco: 'R\$ 95,90', img1: 'assets/prod2_1.jpg', img2: 'assets/prod2_2.jpg', img3: 'assets/prod2_3.jpg', descri: 'Além de ser divertido, é um brinquedo educativo, colorido, produzido em madeira e com peças geométricas de encaixe. Ótimo para o desenvolvimento da atenção, concentração, noções de movimento, coordenação motora, visual, cores, formas e raciocínio lógico das crianças. A Carreta é uma excelente opção de brinquedo para presentear. Contém: 1 carreta pedagógica - tamanho aproximadamente 49 cm de comprimento; 12 peças geométricas​; 1 proposta pedagógica escrita por pedagogas especialistas.', faixaEtaria: 1, precoAnt: 'R\$ 110,00', precoParc: '10x de R\$ 12,99', estoque: 'Indisponível'),
    Produto(nome: 'Brastoy Maleta Educativa Montessori Sensorial Atividades Infantil Urso', preco: 'R\$ 129,08', img1: 'assets/prod3_1.jpg', img2: 'assets/prod3_2.jpg', img3: 'assets/prod3_3.jpg', descri: 'Esta maleta montessori é completa, ideal para desenvolver as mais diversas habilidades cognitivas da criança, desde matemática, raciocínio lógico, tato, coordenação motora, memória, escrita, desenho, entendimento de formas/símbolos e atividades cotidianas básicas. Produto ideal para educar de forma divertida, simples e prática.', faixaEtaria: 2, precoAnt: 'R\$ 149,99', precoParc: '10x de R\$ 14,99', estoque: 'Em estoque'),
    Produto(nome: 'Dino Papa Tudo - Elka', preco: 'R\$ 99,99', img1: 'assets/prod4_1.jpg', img2: 'assets/prod4_2.jpg', img3: 'assets/prod4_3.jpg', descri: 'Seu bebê vai se divertir com o Dino Papa Tudo da Elka. Um simpático dinossauro que as crianças vão adorar. Ele abre a boca que faz barulho de “crec crec” como se estivesse mastigando, ele engole o frango, o peixe e a carne e depois é só abrir a barriga dele para pegar e recomeçar a brincadeira. Um brinquedo divertido que desperta a imaginação, desenvolve a coordenação motora e a percepção visual dos bebês. Feito com plástico não tóxico e recomendado para crianças acima de 12 meses.', faixaEtaria: 2, precoAnt: 'R\$ 129,90', precoParc: '12x de R\$ 10,00', estoque: 'Em estoque'),
    Produto(nome: 'Laboratório Show da Luna Criativo Infantil Kit com 24 Experimentos Super Divertidos, Explorar a Ciência - Nig 0738', preco: 'R\$ 78,00', img1: 'assets/prod5_1.jpg', img2: 'assets/prod5_2.jpg', img3: 'assets/prod5_3.jpg', descri: 'O Laboratório Criativo da Luna é um incrivél kit com mais de 24 experiências, para fazer muitas descobertas! As crianças poderão explorar os princípios básicos fundamentais da ciência de uma forma divertida, assim como acontece no desenho Show da Luna e com o Laboratório Criativo em mãos ela pode aprender na prática. Acompanha QR Codes com vídeos para acompanhar as principais experiências. Características: Marca: Nig Brinquedos; Modelo: 0738. Especificações técnicas: Peso: 875g; Medidas: 43,0 x 30,0 x 6,0 cm; Código Inmetro: BRI/IQB 000446; Mais de 24 Experiências. Conteúdo da Embalagem: 1x estante de Eva ; 2x tubos de ensaio; 1x pipeta; 4x corantes; 1x copinho plástico; 2x bexigas; 1x óculos de proteção; 1x funil; 1x cartão de atividades; 24x fichas; 6x guaches; 1x pincel; 1x ampulheta; 1x vareta; 1x kit bolhas; 1x Canetinhas coloridas; 3x folhas de papel filtro redondo; 2x vasinhos.', faixaEtaria: 6, precoAnt: 'R\$ 89,90', precoParc: '12x de R\$ 7,50', estoque: 'Em estoque'),
    Produto(nome: 'Ouriço Brincalhão Educativo - Brinquedo Pedagógico Sensorial', preco: 'R\$ 46,90', img1: 'assets/prod6_1.jpg', img2: 'assets/prod6_2.jpg', img3: 'assets/prod6_3.jpg', descri: 'Deixe o aprendizado mais divertido com o Ouriço Brincalhão, um brinquedo pedagógico e sensorial que estimula as habilidades motoras, a coordenação e a percepção tátil dos pequenos. Ideal para momentos educativos e repletos de diversão! Design Interativo: Pinos fáceis de segurar e encaixar, ajudando na coordenação motora fina. Estímulo Sensorial: Texturas e cores vivas para desenvolver o tato e a percepção visual. Material Seguro e Durável: Feito para suportar várias brincadeiras, seguro para todas as idades. Benefícios Educativos: Aperfeiçoa habilidades motoras e coordenação. Promove a concentração e a resolução de problemas. Ótimo para brincadeiras individuais e em grupo.', faixaEtaria: 2, precoAnt: 'R\$ 69,99', precoParc: '12x de R\$ 6,00', estoque: 'Em estoque'),
    Produto(nome: 'Ver, tocar e Sentir: Selva!', preco: 'R\$ 25,75', img1: 'assets/prod7_1.jpg', img2: 'assets/prod7_2.jpg', img3: 'assets/prod7_3.jpg', descri: 'Editora: Happy Books; 1ª edição (1 julho 2022); Idioma: Português; Capa dura: 10 páginas; ISBN-10: 6555070773; ISBN-13: 978-6555070774; Dimensões: 17.5 x 2 x 17.5 cm; Ranking dos mais vendidos: Nº 1.460 em Livros (Conheça o Top 100 na categoria Livros).', faixaEtaria: 2, precoAnt: 'R\$ 35,00', precoParc: '5x de R\$ 7,00', estoque: 'Em estoque'),
    Produto(nome: 'Jogo Educativo Geomundo de Tabuleiro Grow', preco: 'R\$ 93,99', img1: 'assets/prod8_1.jpg', img2: 'assets/prod8_2.jpg', img3: 'assets/prod8_3.jpg', descri: 'Traga mais diversão e conhecimento para a família toda com o jogo Geomundo da Grow. Ele possui como tema a Geografia, e com esse jogo de tabuleiro as crianças (e os adultos também) poderão conhecer os cantos mais incríveis do mundo de um jeito simples e super divertido! Para brincar com esse jogo de geografia infantil, você precisa contar de 2 a 4 participantes a partir dos 10 anos de idade! Assim, além de se divertir, você também pode aprender novas informações sobre as cidades, monumentos e países que são parte da jornada de 90 fotos do Geomundo! Todas as regras do jogo Geomundo estão incluídas junto com o manual do jogo. Basta encontrar suas companhias, seguir as regras e partir para a diversão!', faixaEtaria: 12, precoAnt: 'R\$ 135,00', precoParc: '12x de R\$ 11,90', estoque: 'Em estoque'),
    Produto(nome: 'Prancha De Seleçao Madeira 16 Peças E.V.A - Jottplay', preco: 'R\$ 40,00', img1: 'assets/prod9_1.jpg', img2: 'assets/prod9_2.jpg', img3: 'assets/prod9_3.jpg', descri: 'Prancha De Seleçao Madeira 16 Peças E.V.A - JOTTPLAY; Prancha de seleçao em madeira com pinos de encaixe para acoplar16 figuras geométricas. Quadrado, retângulo, triângulo e círculodivididas em 4 cores. Dimensões: 18x18x06cm CE-BRI/ICEPEX - N 00928-96. ', faixaEtaria: 2, precoAnt: 'R\$ 59,90', precoParc: '6x de R\$ 9,99', estoque: 'Em estoque'),
    Produto(nome: 'Jogo De Tabuleiro Pega Pega Tabuada - Grow 1467', preco: 'R\$ 67,99', img1: 'assets/prod10_1.jpg', img2: 'assets/prod10_2.jpg', img3: 'assets/prod10_3.jpg', descri: 'A multiplicação pode ser uma brincadeira muito divertida! Através de um mecanismo com bolinhas, dois números são sorteados, as crianças devem multiplicar esses números e tentar ser a primeira a encontrar o resultado correto. Para quem não souber a resposta, basta olhar no gabarito que acompanha o produto. Jogo Pega Pega Tabuada Agora as crianças vão conseguir memorizar a tabuada de maneira bem lúdica. É bem simples: a roleta com as bolinhas seleciona dois números. Multiplica-se esses números e os jogadores têm que pegar a cartela com o resultado. Contém: 42 cartelas de resultados, 1 sorteador, 1 disco de números, 2 bolinhas, 4 tabelas de tabuadas e 1 manual de instruções.', faixaEtaria: 8, precoAnt: 'R\$ 89,99', precoParc: '5x de R\$ 17,90', estoque: 'Em estoque'),
    Produto(nome: 'Formando Palavras 112 Letras Em Madeira - Pais e Filhos 2906', preco: 'R\$ 36,16', img1: 'assets/prod11_1.jpg', img2: 'assets/prod11_2.jpg', img3: 'assets/prod11_3.jpg', descri: 'O Jogo Formando Palavras em Madeira ajuda a Desenvolver a linguagem verbal e oral da criança, auxiliando no processo de alfabetização. Composição/Material: Madeira; Dimensões da embalagem: 18x25x6 cm; Peso: 0,63 kg.', faixaEtaria: 6, precoAnt: 'R\$ 49,50', precoParc: '5x de R\$ 10,00', estoque: 'Em estoque'),
    Produto(nome: 'Quebra-Cabeça Mapa do Brasil 3D Plástico - Elka', preco: 'R\$ 44,62', img1: 'assets/prod12_1.jpg', img2: 'assets/prod12_2.jpg', img3: 'assets/prod12_3.jpg', descri: 'Quebra-Cabeça Mapa do Brasil 3D Plástico - ElkaDescubra o Quebra-Cabeça Mapa do Brasil 3D Plástico da Elka, um produto que vai proporcionar horas de entretenimento educativo para as crianças. Com ele, os pequenos poderão montar o mapa do Brasil em uma versão tridimensional, enquanto aprendem sobre as regiões, estados, capitais e suas características. Além disso, acompanha uma cartela de adesivos com as informações relevantes sobre cada região do nosso país. Selo Inmetro: 000970/2019 - OCP006. Diferenciais: Aprender brincando de forma divertida e educativa. Mapa em versão 3D para uma experiência sensorial única. Cartela de adesivos com informações sobre as regiões do Brasil. Mais sobre o Produto: Montagem do mapa do Brasil em versão tridimensional. Estímulo do aprendizado das regiões, estados e capitais do país. Desenvolvimento da coordenação motora e raciocínio lógico da criança. Dicas de Uso: Incentive a criança a explorar o mapa e identificar as diferentes regiões. Utilize a cartela de adesivos para enriquecer a experiência de aprendizado. Estimule a criança a montar o quebra-cabeça de forma autônoma, desenvolvendo sua capacidade de resolução de problemas. Ficha Técnica: Marca: Elka; Nome do produto: Quebra-Cabeça Mapa do Brasil 3D Plástico; Selo Inmetro: 000970/2019 - OCP006; Contém: 1 quebra-cabeça mapa do Brasil.', faixaEtaria: 6, precoAnt: 'R\$ 55,90', precoParc: '5x de R\$ 11,00', estoque: 'Em estoque'),  
    Produto(nome: 'Divertidamente 2 - Quebra-cabeça 100 peças, JAK, Toyster brinquedos', preco: 'R\$ 37,90', img1: 'assets/prod13_1.jpg', img2: 'assets/prod13_2.jpg', img3: 'assets/prod13_3.jpg', descri: 'Desafie suas habilidades com este divertido quebra-cabeça de 100 peças do filme Divertidamente 2! Quebra-cabeça Divertidamente 2 com 100 peças. Divertido e desafiante! Desafiador para crianças e adultos. Soft-Click para um encaixe perfeito. Feito com papelão resistente; Embalagem super encapada com abertura lateral.', faixaEtaria: 6, precoAnt: 'R\$ 56,99', precoParc: '3x de R\$ 19,99', estoque: 'Em estoque'),
    Produto(nome: 'Lousa Magnética Infantil Cavalete Dobrável Giz Caneta 3 em 1 Carimbras', preco: 'R\$ 249,89', img1: 'assets/prod14_1.jpg', img2: 'assets/prod14_2.jpg', img3: 'assets/prod14_3.jpg', descri: 'A lousa magnética infantil portátil modelo 5035 da Carimbras, é um dos melhores brinquedos que se pode dar a uma criança, pois é educativo, e proporciona a ela um enorme número de aprendizagens! Esta lousa para criança, é ainda mais especial porque une diversas funcionalidades em um só produto: é um quadro negro e quadro branco magnético portátil, facilitando guardar e transportar para qualquer lugar. O quadro de incentivo infantil é recomendado para crianças a partir de 3 anos de idade e vem com alguns acessórios como apagador, caneta, giz colorido, letras e números magnéticos além de uma cesta para acomodar todo material didático dos pequenos. As crianças podem usar tanto o giz como a caneta, na produção de seus desenhos e atividades, além de poder contar com a funcionalidade de ter um quadro magnético, para usar as letrinhas e números que já acompanham o produto. A respeito das pecinhas magnéticas há 1 unidade de cada número de 0 a 9 e as letras nas quantidades a seguir: A, E, I, O e U são 2 unidades de cada, e as demais letras (consoantes) 1 unidade de cada, além de acompanhar sinais matemáticos para realizar operações: adição, subtração, divisão, multiplicação e igual. A Lousa infantil é fabricado em madeira, plástico e EVA e não emite nem luz nem som. Por isso, está lousa magnética dispensa o uso de pilhas e/ou baterias. Medidas Aproximadas: Lousa montada: 100cm de altura Quadros: 41cm largura x 44cm altura Letras e números magnéticos: Aproximadamente 5cm Cesta de acessórios: 7cm de altura x 10cm de largura x 25cm de comprimento Peso Aproximado: 4,500 kg Conteúdo da Embalagem: 01 Lousa Dupla Face com um Quadro Negro para Giz e Outro Quadro Branco Magnético, 01 Marcador, 41 Letras e Números, 04 Gizes Coloridos, 01 Cesta para Acomodar o Material Didático, 01 Apagador, 01 Manual Explicativo, 04 Suportes e Parafusos de fixação. Todos os nossos produtos são originais, com garantia e acompanham nota fiscal.', faixaEtaria: 6, precoAnt: 'R\$ 299,90', precoParc: '10x de R\$ 30,00', estoque: 'Em estoque'),
    Produto(nome: 'Stitch - Quebra-cabeça 200 peças - Toyster Brinquedos', preco: 'R\$ 44,04', img1: 'assets/prod15_1.jpg', img2: 'assets/prod15_2.jpg', img3: 'assets/prod15_3.jpg', descri: 'Quebra-cabeça de 200 peças, ideal para crianças; Material resistente e de alta qualidade; Auxilia no desenvolvimento das habilidades cognitivas e motoras; Diversão sozinho, com amigos ou em família; Embalagem super encapada.', faixaEtaria: 6, precoAnt: 'R\$ 59,89', precoParc: '5x de R\$ 12,00', estoque: 'Em estoque'),
    Produto(nome: 'Cubo Didático Grande - Mercotoys', preco: 'R\$ 78,30', img1: 'assets/prod16_1.jpg', img2: 'assets/prod16_2.jpg', img3: 'assets/prod16_3.jpg', descri: 'Divertido e colorido Cubo Didático Grande. Cada face uma atividade. 5 formas geométricas e alça para levar. 5 formas geometricas e portinha abre e fecha. Telefone com agenda para escrever e aprender os números de telefone da família. Engrenagem com animais e sua comida e rolinho giratório.', faixaEtaria: 1, precoAnt: 'R\$ 89,90', precoParc: '10x de R\$ 9,00', estoque: 'Em estoque'),
    Produto(nome: 'Tabuleiro Sensorial Montessori Brinquedo Encaixe Madeira', preco: 'R\$ 92,60', img1: 'assets/prod17_1.jpg', img2: 'assets/prod17_2.jpg', img3: 'assets/prod17_3.jpg', descri: 'Ajuda a desenvolver habilidades matemáticas. Aprendizagem de formas geométricas. Identificação das cores.', faixaEtaria: 2, precoAnt: 'R\$ 109,90', precoParc: '10x de R\$ 11,00', estoque: 'Em estoque'),
    Produto(nome: 'Lousa Magnética Infantil Cavalete Dobrável Giz Caneta 3 em 1 Carimbas', preco: 'R\$ 249,89', img1: 'assets/prod18_1.jpg', img2: 'assets/prod18_2.jpg', img3: 'assets/prod18_3.jpg', descri: 'Dobrável; Fácil de Guardar; Fácil de Transportar; Com cesta para acomodar todo material didático; Adequação do controle por rádio	Sala de aula, Espaços domésticos; Tipo de montagem: Montagem sobre a mesa.', faixaEtaria: 2, precoAnt: 'R\$ 309,90', precoParc: '10x de R\$ 30,99', estoque: 'Em estoque'),
    Produto(nome: 'Cnll Brinquedos Montessori de tabuleiro ocupado', preco: 'R\$ 119,00', img1: 'assets/prod19_1.jpg', img2: 'assets/prod19_2.jpg', img3: 'assets/prod19_3.jpg', descri: 'de 1 a 4 anos, brinquedos sensoriais para crianças de 1 a 3 anos, brinquedos educativos de viagem para autismo, atividades pré-escolares para aprender habilidades motoras finas (azul).', faixaEtaria: 2, precoAnt: 'R\$ 169,99', precoParc: '10x de R\$ 16,99', estoque: 'Em estoque'),
    Produto(nome: '86 peças Brinquedos Educativos brinquedo para crianças blocos de construção hastes sticks Infantis Brinquedos de montar', preco: 'R\$ 180,00', img1: 'assets/prod20_1.jpg', img2: 'assets/prod20_2.jpg', img3: 'assets/prod20_3.jpg', descri: 'Material do produto: Plástico ecologicamente correto. Vem com: Bolsa de armazenamento * 1 + manual * 1 exceto 6 peças (versão de teste); Conforme apresentado na foto, um conjunto de 86 peças para construir uma casa completa; Lista de Pacotes de Software de Software: Como Mostrado Na Imagem Selecionada (Pode haver Erros Na Cor, Lembre-se de Não Atirar)', faixaEtaria: 3, precoAnt: 'R\$ 199,90', precoParc: '10x de R\$ 20,00', estoque: 'Em estoque'),
    Produto(nome: 'Jogo de raciocínio Cubo 3D montessori', preco: 'R\$ 210,00', img1: 'assets/prod21_1.jpg', img2: 'assets/prod21_2.jpg', img3: 'assets/prod21_3.jpg', descri: 'Jogo de tabuleiro projetado especialmente para o Jogo do Cubo; COMO JOGAR: 1º- Agite o Dado de Cubos contendo para formar um novo padrão. 2°- Observe atentamente o padrão formado através do recipiente, interpretando-o para determinar seus movimentos no tabuleiro. 3º Mova os blocos da área central do tabuleiro e reorganize-os para corresponder ao padrão correto e completo, conforme interpretado através do padrão observado nos dados dentro do contêiner. 4°-O jogador que organizar corretamente o padrão primeiro deve estabelecer imediatamente a conexão do quadro, declarando-se o vencedor do jogo.', faixaEtaria: 6, precoAnt: 'R\$ 259,90', precoParc: '10x de R\$ 25,99', estoque: 'Em estoque'),
    Produto(nome: 'Rompecabezas De Habilidades Motoras Montessori Wooden Man', preco: 'R\$ 74,56', img1: 'assets/prod22_1.jpg', img2: 'assets/prod22_2.jpg', img3: 'assets/prod22_3.jpg', descri: 'Crianças de madeira vara homem quebra-cabeça brinquedos 24 cartões cognitivos aprendizagem precoce jogos de quebra-cabeça crianças montessori brinquedos habilidades motoras pai-filho interativo montessori brinquedos educativos.', faixaEtaria: 6, precoAnt: 'R\$ 89,90', precoParc: '10x de R\$ 9,00', estoque: 'Em estoque'),
    Produto(nome: 'Países e suas Bandeiras - Jogo Educativo - Toyster Brinquedos', preco: 'R\$ 40,23', img1: 'assets/prod23_1.jpg', img2: 'assets/prod23_2.jpg', img3: 'assets/prod23_3.jpg', descri: 'As crianças irão se divertir aprendendo sobre os países e suas bandeiras! Com três formas diferentes de jogar; Desenvolve a concentração e a percepção visual; Material de alta resistência e qualidade; Embalagem dura com abertura lateral.', faixaEtaria: 6, precoAnt: 'R\$ 69,90', precoParc: '10x de R\$ 7,00', estoque: 'Em estoque'),
    Produto(nome: 'Brinquedo Educativo Experiência Científica Para Crianças', preco: 'R\$ 89,63', img1: 'assets/prod24_1.jpg', img2: 'assets/prod24_2.jpg', img3: 'assets/prod24_3.jpg', descri: 'Desenvolvimento Motor e Cognitivo: Ajuda as crianças a desenvolverem suas habilidades motoras finas e cognitivas através da manipulação do labirinto de choque elétrico, tornando cada experimento uma conquista compartilhada. Estímulo Visual e Intelectual: O design interativo e as cores vibrantes capturam a atenção e estimulam a percepção visual e intelectual das crianças, enchendo o ambiente de alegria e curiosidade. Atividades Educativas: Promove o aprendizado através de brincadeiras interativas e envolventes, proporcionando uma base sólida para o desenvolvimento intelectual e científico. Jogo Engraçado de Festa: Ideal para festas e eventos, este brinquedo cria um ambiente de diversão e aprendizado coletivo, incentivando a interação social. Especificações: Material: Componentes de alta qualidade, seguros e duráveis, para que você tenha a tranquilidade de saber que seu filho está brincando com segurança. Dimensões: Adaptadas para as mãos pequenas das crianças, permitindo que elas manuseiem e explorem com facilidade.', faixaEtaria: 3, precoAnt: 'R\$ 119,90', precoParc: '10x de R\$ 12,00', estoque: 'Em estoque'),
    Produto(nome: 'Brinquedo Pedagógico Educativo Magnético Labirinto Pirata', preco: 'R\$ 165,00', img1: 'assets/prod25_1.jpg', img2: 'assets/prod25_2.jpg', img3: 'assets/prod25_3.jpg', descri: 'O Jogo Magnético Labirinto Pirata é um brinquedo que atrai a atenção dos pequenos e estimula o exercício da coordenação motora fina e concentração. Para brincar a criança deve movimentar as bolinhas pelo labirinto utilizando o bastão com imã e fazê-las chegar ao centro. Como Brincar? Utilize a Caneta magnética para mover as bolinhas coloridas pelo labirinto passando pelos corpos dos animais. Acompanha 1 caneta magnética.', faixaEtaria: 3, precoAnt: 'R\$ 189,90', precoParc: '10x de R\$ 19,00', estoque: 'Em estoque'),
    Produto(nome: 'Brinquedo Educativo Montessori de Classificação de Cores Jogo de Encaixe de Varetas', preco: 'R\$ 230,00', img1: 'assets/prod26_1.jpg', img2: 'assets/prod26_2.jpg', img3: 'assets/prod26_3.jpg', descri: 'Explorando o Mundo das Cores e Formas: A base de madeira possui vários orifícios, onde as crianças devem encaixar as varetas coloridas de diferentes tamanhos. Cada encaixe é uma conquista que traz alegria e aprendizado. Desafios e Conquistas: Escolher a vareta certa e encaixar no orifício correspondente ajuda a desenvolver a coordenação e o raciocínio. A cada tentativa, a criança se sente desafiada a ir além, aprendendo no seu próprio ritmo. O Que Vem na Caixinha de Amor? 1x Base de madeira com orifícios para encaixe; 12x Varetas coloridas em diversos tamanhos e cores; 1x Anel para equilibrar as varetas, trazendo ainda mais desafios e diversão; 1x Dado com as cores das varetas, incentivando jogos criativos e educativos; 1x Guia de atividades para inspirar e encorajar cada brincadeira. Material: Madeira de alta qualidade, livre de BPA e com acabamento seguro e não tóxico. Transforme Cada Brincadeira em Aprendizado Na Infinito do Amor, acreditamos que cada momento brincando é uma oportunidade de aprendizado e crescimento.', faixaEtaria: 2, precoAnt: 'R\$ 269,90', precoParc: '10x de R\$ 26,99', estoque: 'Em estoque'),
    Produto(nome: 'Brinquedos De Aprendizagem Pré-escolar E Recursos De Aprendi', preco: 'R\$ 300,00', img1: 'assets/prod27_1.jpg', img2: 'assets/prod27_2.jpg', img3: 'assets/prod27_3.jpg', descri: 'Recursos de aprendizagem Mini Letter Scoops — Brinquedos didáticos pré-escolares para crianças de 3 anos ou mais, brinquedos empilháveis para bebês e crianças, aprendizado de Montessori, brinquedos alfabéticos, 52 peças — Ofereça novas habilidades com letras: as crianças combinam letras maiúsculas com minúsculas toda vez que pegam e brincam com esses lindos brinquedos de aprendizagem pré-escolar! - Fine Motor Fun: as Mini Letter Scoops funcionam como brinquedos empilháveis e exploram as coberturas de sorvete dobráveis que também ajudam as crianças a desenvolver a coordenação e outras habilidades motoras finas! - Funciona como Play Food: Pronto para uma aventura criativa de sorvete? Sirva essas casquinhas de sorvete realistas durante jogos de fingimento ou outras atividades de aprendizagem pré-escolar! - Inclui armazenamento reutilizável: as Mini Letter Scoops vêm com uma caixa de armazenamento de plástico reutilizável que facilita a limpeza! - Dê o presente de aprender: se você está comprando para feriados, aniversários ou apenas porque, os brinquedos educativos premiados da Learning Resources ajudam você a descobrir uma nova diversão de aprendizado sempre que dá um presente!', faixaEtaria: 3, precoAnt: 'R\$ 349,90', precoParc: '10x de R\$ 34,99', estoque: 'Em estoque'),
    Produto(nome: 'Jogo de Geometria com 129 Peças para Crianças de 6', preco: 'R\$ 500,00', img1: 'assets/prod28_1.jpg', img2: 'assets/prod28_2.jpg', img3: 'assets/prod28_3.jpg', descri: 'Jogo de Geometria com 129 Peças para Crianças de 6+ - Volta às Aulas[PRODUTO INTERNACIONAL/COMPRA INTERNACIONAL] Toda mercadoria proveniente do exterior deve ser objeto de declaração de importação e está sujeita a tributação federal e estadual. Os impostos desse produto já estão incluídos no preço. Não será cobrado valor adicional. Desenvolva a geometria prática dos seus alunos com este incrível conjunto de construção de formas! Composto por 129 peças, incluindo 60 varas em 3 tamanhos, 20 curvas, 34 conectores e 15 cartões de atividade de dupla face, este conjunto possibilita a criação de diferentes formas geométricas.', faixaEtaria: 3, precoAnt: 'R\$ 559,90', precoParc: '12x de R\$ 47,00', estoque: 'Em estoque'),
    Produto(nome: 'Tatu da matemática', preco: 'R\$ 197,50', img1: 'assets/prod29_1.jpg', img2: 'assets/prod29_2.jpg', img3: 'assets/prod29_3.jpg', descri: 'O Tatu da Matemática transforma o ensino da matemática em uma experiência divertida e estimulante, envolvendo as crianças em atividades lúdicas. Estimulo cognitivo: Com desafios e quebra-cabeças matemáticos, o jogo estimula a raciocínio lógico e o desenvolvimento cognitivo das crianças. Criatividade e resolução de problemas: O Tatu da Matemática promove a criatividade ao incentivar as crianças a encontrar soluções criativas para os desafios matemáticos propostos. Aprendizado prático: As atividades práticas e interativas do jogo permitem que as crianças apliquem conceitos matemáticos de forma tangível, fortalecendo sua compreensão e habilidades de cálculo. Autonomia e confiança: O jogo encoraja a independência, permitindo que as crianças experimentem e resolvam problemas matemáticos por conta própria, aumentando sua confiança e habilidades de tomada de decisão. Motivação e engajamento: O Tatu da Matemática oferece recompensas e incentivos ao longo do jogo, mantendo as crianças motivadas e engajadas no processo de aprendizagem. Progressão personalizada O jogo adapta-se ao nível de habilidade de cada criança, proporcionando um aprendizado personalizado e desafiador.', faixaEtaria: 3, precoAnt: 'R\$ 229,90', precoParc: '10x de R\$ 23,00', estoque: 'Em estoque'),
    Produto(nome: 'Jogo Matemática Fecha Caixa', preco: 'R\$ 129,99', img1: 'assets/prod30_1.jpg', img2: 'assets/prod30_2.jpg', img3: 'assets/prod16_3.jpg', descri: 'Estímulo cognitivo e linguístico! Com suas atividades envolventes, como jogos de tabuleiro de matemática, jogos de dados e exercícios educativos, o Jogo Matemática Fecha Caixa promove o desenvolvimento cognitivo e linguístico de forma divertida e dinâmica. É uma ferramenta valiosa para estimular o raciocínio lógico, a linguagem e a comunicação.', faixaEtaria: 3, precoAnt: 'R\$ 189,90', precoParc: '10x de R\$ 19,00', estoque: 'Em estoque'),
  ];

  // Variável para armazenar a faixa etária selecionada
  int? faixaEtariaSelecionada;

  // Função para filtrar os produtos pela faixa etária
  List<Produto> get produtosFiltrados {
    if (faixaEtariaSelecionada == null) {
      return produtos; // Se nenhuma faixa etária foi selecionada, exibe todos os produtos
    }
    //incluir produtos com faixa etária maior ou igual à selecionada
    return produtos.where((produto) => produto.faixaEtaria >= faixaEtariaSelecionada!).toList();
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

            const SizedBox(height: 20),

            // Filtros por idade
            SingleChildScrollView(
              scrollDirection: Axis.horizontal, // Corrigido para rolagem horizontal
              child: Row(
                children: [
                  IdadeFiltroButton(label: '2+ anos', onPressed: () {
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
