import 'package:checkpoint3/components/favorite.dart';
import 'package:checkpoint3/components/movie.dart';
import 'package:checkpoint3/components/stars.dart';
import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  Details({super.key, required this.movie, required this.primaryColor});

  Movie movie;
  Color primaryColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
                    // Stars(
                    //   size: 12,
                    //   score: movie.score,
                    // ),
                  ],
                ),
                SizedBox(
                  width: 120,
                ),
                Column(
                  children: [
                    Text(
                      'Favorito',
                      style: TextStyle(color: primaryColor),
                    ),
                    // Favorite(),
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
