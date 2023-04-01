import 'package:flutter/material.dart';
import 'package:game_app/constants/colors.dart';
import 'package:game_app/models/game.dart';
import 'package:game_app/screens/details/widgets/details_header_delegate.dart';
import 'package:game_app/screens/details/widgets/details_info.dart';

class DetailsPage extends StatelessWidget {
  final Game game;
  const DetailsPage(this.game, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
            delegate: DetailsHeaderDelegate(
              game: game,
              delegateHeight: 360,
              roundedContainerHeight: 40,
            ),
          ),
          SliverToBoxAdapter(
            child: DetailsInfo(game),
          ),
        ],
      ),
    );
  }
}
