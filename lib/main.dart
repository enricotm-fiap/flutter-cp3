import 'package:checkpoint3/components/movie.dart';
import 'package:checkpoint3/screens/details.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Checkpoint 3',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Checkpoint 3'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final primaryColor = Colors.cyan;
  final secondaryColor = Colors.white;

  int screen = 1; // 1 - Todos ; 2 - Favoritos ; 3 - Avaliados
  List<Movie> all = [
    Movie(
      title: 'Fantastic Mr. Fox',
      year: '2009',
      genre: 'Comédia/Aventura',
      screentime: '1h 27m',
      synopsis:
          'Após 12 anos de felicidade bucólica, o Sr. Raposo descumpre a promessa que fez à esposa e invade as fazendas dos vizinhos Boggis, Bunce e Bean. Ceder aos seus instintos animais coloca em perigo não somente o seu casamento, mas também a vida de sua família e seus amigos. Quando os fazendeiros montam uma armadilha para o Sr. Raposo, ele tem que confiar na sua astúcia natural para vencer o oponente.',
      image: 'images/fantastic-mr-fox.png',
    ),
    Movie(
      title: 'Shrek',
      year: '2001',
      genre: 'Comédia/Fantasia',
      screentime: '1h 29m',
      synopsis:
          'Um ogro tem sua vida invadida por personagens de contos de fadas que acabam com a tranquilidade de seu lar. Ele faz um acordo pra resgatar uma princesa.',
      image: 'images/shrek.png',
    ),
    Movie(
      title: 'Clube da Luta',
      year: '1999',
      genre: 'Suspense/Ação',
      screentime: '2h 19m',
      synopsis:
          'Um homem deprimido que sofre de insônia conhece um estranho vendedor chamado Tyler Durden e se vê morando em uma casa suja depois que seu perfeito apartamento é destruído. A dupla forma um clube com regras rígidas onde homens lutam. A parceria perfeita é comprometida quando uma mulher, Marla, atrai a atenção de Tyler.',
      image: 'images/clube-da-luta.png',
    ),
    Movie(
      title: 'A Fantástica Fábrica de Chocolate',
      year: '2005',
      genre: 'Comédia/Fantasia',
      screentime: '1h 55m',
      synopsis:
          'Baseado no conto de Roald Dahl, este cômico e fantástico filme segue o jovem Charlie Bucket e seu avô Joe. Eles se juntam a um pequeno grupo de ganhadores de uma competição, os quais vão para um passeio na mágica e misteriosa fábrica do excêntrico Willy Wonka. Ajudado por seus anões trabalhadores, Wonka esconde uma surpresa para durante o passeio.',
      image: 'images/fantastica-fabrica-de-chocolate.png',
    ),
    Movie(
      title: 'Diário de uma Paixão',
      year: '2004',
      genre: 'Romance/Drama',
      screentime: '2h 01m',
      synopsis:
          'Na década de 1940, na Carolina do Sul, o operário Noah Calhoun e a rica Allie se apaixonam desesperadamente, mas os pais da jovem não aprovam o namoro. Noah é enviado para lutar na Segunda Guerra Mundial, e parece ser o fim do romance. Enquanto isso, Allie se envolve com outro homem. No entanto, a paixão deles ainda não acabou quando Noah retorna para a pequena cidade anos mais tarde, próximo ao casamento de Allie.',
      image: 'images/diario-de-uma-paixao.png',
    ),
    Movie(
      title: 'Oppenheimer',
      year: '2023',
      genre: 'Suspense/Obra de Época',
      screentime: '3h 00m',
      synopsis:
          'O físico J. Robert Oppenheimer trabalha com uma equipe de cientistas durante o Projeto Manhattan, levando ao desenvolvimento da bomba atômica.',
      image: 'images/oppenheimer.png',
    ),
    Movie(
      title: 'Tropa de Elite',
      year: '2007',
      genre: 'Crime/Ação',
      screentime: '1h 55m',
      synopsis:
          'Nascimento, capitão da Tropa de Elite do Rio de Janeiro, é designado para chefiar uma das equipes que tem como missão apaziguar o Morro do Turano. Ele precisa cumprir as ordens enquanto procura por um substituto para ficar em seu lugar. Em meio a um tiroteio, Nascimento e sua equipe resgatam Neto e Matias, dois aspirantes a oficiais da PM. Ansiosos para entrar em ação e impressionados com a eficiência de seus salvadores, os dois se candidatam ao curso de formação da Tropa de Elite.',
      image: 'images/tropa-de-elite.png',
    ),
    Movie(
      title: 'Matrix',
      year: '1999',
      genre: 'Ação/Ficção científica',
      screentime: '2h 16m',
      synopsis:
          'O jovem programador Thomas Anderson é atormentado por estranhos pesadelos em que está sempre conectado por cabos a um imenso sistema de computadores do futuro. À medida que o sonho se repete, ele começa a desconfiar da realidade. Thomas conhece os misteriosos Morpheus e Trinity e descobre que é vítima de um sistema inteligente e artificial chamado Matrix, que manipula a mente das pessoas e cria a ilusão de um mundo real enquanto usa os cérebros e corpos dos indivíduos para produzir energia.',
      image: 'images/matrix.png',
    ),
    Movie(
      title: 'Avatar',
      year: '2009',
      genre: 'Ficção científica/Ação',
      screentime: '2h 42m',
      synopsis:
          "No exuberante mundo alienígena de Pandora vivem os Na'vi, seres que parecem ser primitivos, mas são altamente evoluídos. Como o ambiente do planeta é tóxico, foram criados os avatares, corpos biológicos controlados pela mente humana que se movimentam livremente em Pandora. Jake Sully, um ex-fuzileiro naval paralítico, volta a andar através de um avatar e se apaixona por uma Na'vi. Esta paixão leva Jake a lutar pela sobrevivência de Pandora.",
      image: 'images/avatar.png',
    ),
    Movie(
      title: 'O Projeto Adam',
      year: '2022',
      genre: 'Ação/Ficção científica',
      screentime: '1h 46m',
      synopsis:
          'Um viajante do tempo volta ao ano de 2022 por acidente e acaba se encontrando com seu eu mais novo. Juntos, e sendo caçados por forças do futuro, os dois embarcam em uma missão para consertar a linha temporal e salvar seus entes queridos.',
      image: 'images/projeto-adam.png',
    ),
  ];
  List<Movie> favorites = [];
  List<Movie> scored = [];

  String title = '';
  List<Movie> movies = [];

  void updateVariables(screen) {
    switch (screen) {
      case 1:
        title = 'Todos os filmes';
        movies = all;
        break;
      case 2:
        title = 'Favoritos';
        movies = favorites;
        break;
      case 3:
        title = 'Avaliados';
        movies = scored;
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    updateVariables(screen);
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: primaryColor,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(
              title: Text('Todos os Filmes'),
              onTap: () {
                setState(() {
                  screen = 1;
                  updateVariables(screen);
                  Navigator.of(context).pop();
                });
              },
            ),
            ListTile(
              title: Text('Favoritos'),
              onTap: () {
                setState(() {
                  screen = 2;
                  updateVariables(screen);
                  Navigator.of(context).pop();
                });
              },
            ),
            ListTile(
              title: Text('Assistidos'),
              onTap: () {
                setState(() {
                  screen = 3;
                  updateVariables(screen);
                  Navigator.of(context).pop();
                });
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: primaryColor,
      ),
      body: ListView.builder(
        itemCount: movies.length,
        itemBuilder: (context, i) {
          return ListTile(
            title: Text(movies[i].title),
            subtitle: Text(movies[i].getSubtitle()),
            leading: Image(
              image: AssetImage(movies[i].image),
              height: 100,
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  movies[i].score.toString(),
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                IconButton(
                  icon: Icon(
                    movies[i].favorite ? Icons.favorite : Icons.favorite_border,
                    color: Colors.red,
                  ),
                  onPressed: () {
                    setState(() {
                      if (movies[i].favorite) {
                        movies[i].favorite = false;
                        favorites.remove(movies[i]);
                      } else {
                        movies[i].favorite = true;
                        favorites.add(movies[i]);
                      }
                    });
                  },
                ),
              ],
            ),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>
                      Details(movie: movies[i], primaryColor: primaryColor)));
            },
          );
        },
      ),
    );
  }
}
