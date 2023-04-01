import 'package:flutter/material.dart';
import 'package:game_app/constants/colors.dart';
import 'package:game_app/models/game.dart';

class NewestGame extends StatelessWidget {
  const NewestGame({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Game> game = Game.generateGames();

    return Container(
      padding: const EdgeInsets.only(top: 25, right: 25, left: 25),
      child: Column(
        children: game
            .map((e) => Container(
                  padding: const EdgeInsets.all(15),
                  margin: const EdgeInsets.only(bottom: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          e.icon,
                          width: 70,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            e.name,
                            style: const TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 20),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [_buildTextIcon(), _buildButton()],
                          )
                        ],
                      ))
                    ],
                  ),
                ))
            .toList(),
      ),
    );
  }

  Column _buildTextIcon() {
    final List<Color> star = [
      Colors.amber,
      Colors.amber,
      Colors.amber,
      Colors.amber,
      Colors.grey.withOpacity(0.6),
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Adventure',
          style: TextStyle(fontSize: 15, color: Colors.grey.withOpacity(0.4)),
        ),
        Row(
          children: star
              .map((e) => Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: e,
                        size: 15,
                      ),
                      const SizedBox(width: 2,)
                    ],
                  ))
              .toList(),
        )
      ],
    );
  }

  Container _buildButton() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
      decoration: BoxDecoration(
        color: kPrimary,
        borderRadius: BorderRadius.circular(50),
      ),
      child: const Text('Install', style: TextStyle(color: Colors.white),),
    );
  }
}
