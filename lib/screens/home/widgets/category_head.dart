import 'package:flutter/material.dart';

class CategoryHead extends StatelessWidget {
  const CategoryHead({super.key});

  @override
  Widget build(BuildContext context) {
    final list = [
      {
        'icon': Icons.track_changes_outlined,
        'color': const Color(0XFF605CF4),
        'title': 'Arcade'
      },
      {
        'icon': Icons.sports_motorsports_outlined,
        'color': const Color(0XFFC778A6),
        'title': 'Racing'
      },
      {
        'icon': Icons.straighten_outlined,
        'color': const Color(0XFF4391FF),
        'title': 'Strategy'
      },
      {
        'icon': Icons.sports_esports,
        'color': const Color(0XFF7182F2),
        'title': 'More'
      },
    ];

    return Container(
      padding: const EdgeInsets.only(left: 25, right: 25, bottom: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: list
            .map(
              (e) => Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.only(bottom: 5),
                    decoration: BoxDecoration(
                      color: e['color'] as Color,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Icon(
                      e['icon'] as IconData,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                  Text(e['title'] as String)
                ],
              ),
            )
            .toList(),
      ),
    );
  }
}
