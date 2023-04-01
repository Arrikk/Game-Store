import 'package:flutter/material.dart';
import 'package:game_app/constants/colors.dart';

class InstallButton extends StatelessWidget {
  const InstallButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: kPrimary, borderRadius: BorderRadius.circular(25)),
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.center,
      child: const Text(
        'Install',
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
    );
  }
}
