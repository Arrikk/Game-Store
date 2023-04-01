import 'package:flutter/material.dart';
import 'package:game_app/models/game.dart';

class DetailsHeader extends StatelessWidget {
  final Game game;
  const DetailsHeader(this.game, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              game.bgImg,
              width: 80,
              height: 90,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  game.name,
                  style: const TextStyle(
                      fontSize: 23, fontWeight: FontWeight.w400),
                ),
                const SizedBox(height: 5),
                const Text(
                  'Adventure',
                  style: TextStyle(color: Colors.grey),
                ),
                const SizedBox(height: 5),
                Row(
                  children: [
                    _buildHeaderIcons(Icons.star, Colors.amber, '4.8'),
                    const SizedBox(width: 15),
                    _buildHeaderIcons(Icons.download_sharp, Colors.red, '328k'),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHeaderIcons(IconData icon, Color color, String text) {
    return Row(
      children: [
        Icon(
          icon,
          color: color,
          size: 15,
        ),
        const SizedBox(width: 2),
        Text(
          text,
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
