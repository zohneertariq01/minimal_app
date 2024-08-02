import 'package:flutter/material.dart';

import '../data/movie_data.dart';
import '../model/movie_model.dart';

class BackgroundWidget extends StatelessWidget {
  final PageController controller;

  const BackgroundWidget({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) => PageView.builder(
        reverse: true,
        physics: NeverScrollableScrollPhysics(),
        controller: controller,
        itemBuilder: (context, index) {
          final movie = movies[index];

          return buildBackground(movie: movie);
        },
        itemCount: movies.length,
      );

  Widget buildBackground({required Movie movie}) => Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            child: Image.asset(movie.imageUrl, fit: BoxFit.cover),
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.15, 0.75],
                colors: [
                  Colors.white.withOpacity(0.0001),
                  Colors.white,
                ],
              ),
            ),
          )
        ],
      );
}
