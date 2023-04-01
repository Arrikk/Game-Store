import 'package:flutter/material.dart';
import 'package:game_app/models/game.dart';

class DetailsDescription extends StatelessWidget {
  final Game game;
  const DetailsDescription(this.game, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Text(game.desc),
    );
  }
}
