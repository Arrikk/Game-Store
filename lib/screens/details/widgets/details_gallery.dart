import 'package:flutter/material.dart';
import 'package:game_app/models/game.dart';

class DetailsGallery extends StatelessWidget {
  final Game game;
  const DetailsGallery(this.game, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
        scrollDirection: Axis.horizontal,
          itemBuilder: (_, i) => ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(game.imgs[i],),
          ),
          separatorBuilder: (_, i) => const SizedBox(width: 10),
          itemCount: game.imgs.length),
    );
  }
}
