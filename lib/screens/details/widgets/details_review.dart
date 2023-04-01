import 'package:flutter/material.dart';
import 'package:game_app/models/game.dart';
import 'package:game_app/screens/details/widgets/install_button.dart';

class DetailsReview extends StatelessWidget {
  final Game game;
  const DetailsReview(this.game, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(25),
      child: Column(
        children: [
          _buildRatingTitle(),
          _buildRatingReview(game.score, game.review),
          const InstallButton()
        ],
      ),
    );
  }

  Row _buildRatingTitle() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Text(
          "Ratings and Review",
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
        ),
        Text(
          'view',
          style: TextStyle(color: Colors.grey),
        ),
      ],
    );
  }

  Container _buildRatingReview(num score, num review) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            score.toString(),
            style: const TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
          ),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildReviewStar(),
              const SizedBox(height: 5),
              Text(
                '$review reviews',
                style: const TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  Row _buildReviewStar() {
    const List<Color> star = [
      Colors.amber,
      Colors.amber,
      Colors.amber,
      Colors.amber,
      Colors.grey,
    ];
    return Row(
      children: star
          .map((e) => Icon(
                Icons.star,
                color: e,
                size: 25,
              ))
          .toList(),
    );
  }
}
