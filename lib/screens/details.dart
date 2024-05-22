import 'package:checkpoint3/components/movie.dart';
import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  Details(
      {super.key,
      required this.movie,
      required this.primaryColor,
      required this.headerTextColor});

  Movie movie;
  Color primaryColor;
  Color headerTextColor;

  Icon getIcon(iconScore, score) {
    IconData icon;
    if (score > iconScore + 0.5) {
      icon = Icons.star;
    } else if (score > iconScore) {
      icon = Icons.star_half;
    } else {
      icon = Icons.star_border;
    }
    return Icon(
      icon,
      color: Colors.amber,
      size: 29,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: headerTextColor,
        title: Text(
          movie.title,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: primaryColor,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
        child: Column(
          children: [
            Image(
              image: AssetImage(movie.image),
              height: 270,
            ),
            SizedBox(
              height: 20,
            ),
            Text(movie.synopsis),
            SizedBox(
              height: 10,
            ),
            Divider(
              color: primaryColor,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text(
                      'Ano',
                      style: TextStyle(color: primaryColor),
                    ),
                    Text(
                      movie.year,
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
                SizedBox(
                  width: 50,
                ),
                Column(
                  children: [
                    Text(
                      'Gênero',
                      style: TextStyle(color: primaryColor),
                    ),
                    Text(
                      movie.genre,
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
                SizedBox(
                  width: 50,
                ),
                Column(
                  children: [
                    Text(
                      'Duração',
                      style: TextStyle(color: primaryColor),
                    ),
                    Text(
                      movie.screentime,
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text(
                      'Nota',
                      style: TextStyle(color: primaryColor),
                    ),
                    Row(
                      children: [
                        getIcon(0, movie.score),
                        getIcon(1, movie.score),
                        getIcon(2, movie.score),
                        getIcon(3, movie.score),
                        getIcon(4, movie.score),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  width: 60,
                ),
                Column(
                  children: [
                    Text(
                      'Favorito',
                      style: TextStyle(color: primaryColor),
                    ),
                    Icon(
                      movie.favorite ? Icons.favorite : Icons.favorite_border,
                      color: Colors.red,
                      size: 25,
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
