import 'package:flutter/material.dart';

class Favorite extends StatefulWidget {
  const Favorite({super.key, required this.favorite});

  final bool favorite;

  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  @override
  Widget build(BuildContext context) {
    return const IconButton(
      icon: Icon(
        widget.favorite?Icons.favorite:Icons.favorite_border,
        color: Colors.red,
      ),
      onPressed: () {
        setState(() {
          widget.favorite = !widget.favorite;
        });
      },
    );
  }
}