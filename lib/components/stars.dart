import 'package:flutter/material.dart';

class StarsScore extends StatefulWidget {
  StarsScore({super.key, required this.size, required this.score});

  double size;
  double score;

  @override
  State<StarsScore> createState() => _StarsScoreState();
}

class _StarsScoreState extends State<StarsScore> {
  // double size = 14;
  // double score = 0;

  // _StarsScoreState({required this.size, required this.score});

  // @override
  // void initState() {
  //   super.initState();
  //   size = widget.size;
  //   score = widget.score;
  // }

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        // IconButton(
        //   icon: Icon(
        //     widget.score >= 1 ? Icons.star : Icons.star_border,
        //     color: Colors.amber,
        //     size: widget.size,
        //   ),
        //   onPressed: () {
        //     setState(() {});
        //   },
        // ),
      ],
    );
  }
}
