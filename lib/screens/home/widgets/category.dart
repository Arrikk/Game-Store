import 'package:flutter/material.dart';
import 'package:game_app/screens/home/widgets/category_head.dart';
import 'package:game_app/screens/home/widgets/newest_game.dart';
import 'package:game_app/screens/home/widgets/popular_games.dart';

class Category extends StatelessWidget {
  const Category({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 20,
      ),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25), topRight: Radius.circular(25)),
        color: Color(0xFFF6F8FF),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CategoryHead(),
          _buildText('Popular Games'),
          const PopularGames(),
          _buildText('Newest Games'),
          const NewestGame()
        ],
      ),
    );
  }

  Container _buildText(String title) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Text(
        title,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
    );
  }
}
