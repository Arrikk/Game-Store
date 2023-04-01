import 'package:flutter/material.dart';
import 'package:game_app/constants/colors.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
      child: Stack(
        children: [
          TextField(
            cursorColor: kPrimary,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide:
                      const BorderSide(width: 0, style: BorderStyle.none),
                ),
                prefixIcon: const Icon(
                  Icons.search_outlined,
                  size: 30,
                  color: kPrimary,
                ),
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 0),
                filled: true,
                fillColor: Colors.white,
                hintText: 'Search game',
                hintStyle: TextStyle(color: Colors.grey.withOpacity(0.6))),
            style: TextStyle(color: Colors.grey.withOpacity(0.7)),
          ),
          Positioned(
            right: 12,
            top: 7,
            child: Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: kPrimary,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Icon(
                Icons.mic_outlined,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
