import 'package:flutter/material.dart';
import 'package:game_app/models/game.dart';
import 'package:game_app/screens/details/widgets/details_description.dart';
import 'package:game_app/screens/details/widgets/details_gallery.dart';
import 'package:game_app/screens/details/widgets/details_header.dart';
import 'package:game_app/screens/details/widgets/details_review.dart';
import 'package:game_app/screens/details/widgets/install_button.dart';

class DetailsInfo extends StatelessWidget {
  final Game game;
  const DetailsInfo(this.game, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DetailsHeader(game),
          DetailsGallery(game),
          DetailsDescription(game),
          DetailsReview(game),
        ],
      ),
    );
  }
}
