import 'package:flutter/material.dart';
import 'package:game_app/constants/colors.dart';
import 'package:game_app/models/game.dart';

class DetailsHeaderDelegate extends SliverPersistentHeaderDelegate {
  final Game game;
  final double delegateHeight;
  final double roundedContainerHeight;

  DetailsHeaderDelegate({
    required this.game,
    required this.delegateHeight,
    required this.roundedContainerHeight,
  });

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    // TODO: implement build
    return Stack(
      children: [
        Image.asset(
          game.bgImg,
          width: MediaQuery.of(context).size.width,
          height: delegateHeight,
          fit: BoxFit.cover,
        ),
        Positioned(
          child: GestureDetector(
            onTap: () => Navigator.of(context).pop(),
            child: Container(
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).padding.top, left: 15),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey.withOpacity(0.5),
              ),
              child: const Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
                size: 20,
              ),
            ),
          ),
        ),
        Positioned(
          top: delegateHeight - roundedContainerHeight - shrinkOffset,
          child: Container(
            height: roundedContainerHeight,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50),
                topRight: Radius.circular(50),
              ),
            ),
            alignment: Alignment.center,
            child: Container(
              width: 50,
              height: 5,
              decoration: BoxDecoration(
                color: kPrimary,
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  // ignore: todo
  // TODO: implement maxExtent
  double get maxExtent => delegateHeight;

  @override
  // TODO: implement minExtent
  double get minExtent => 0;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    // TODO: implement shouldRebuild
    return false;
  }
}
