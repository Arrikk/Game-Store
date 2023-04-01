import 'package:flutter/material.dart';
import 'package:game_app/models/game.dart';
import 'package:game_app/screens/details/details.dart';

class PopularGames extends StatelessWidget {
  const PopularGames({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Game> game = Game.generateGames();
    return SizedBox(
      height: 200,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
          itemBuilder: (_, i) => GestureDetector(
            onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => DetailsPage(game[i]) )),
            child: Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15)
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(game[i].bgImg),
                ),
              ),
            ),
          ),
          separatorBuilder: (_, i) => const SizedBox(width: 20,),
          itemCount: game.length),
    );
  }
}
