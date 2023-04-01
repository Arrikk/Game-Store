import 'package:flutter/material.dart';
import 'package:game_app/constants/colors.dart';
import 'package:game_app/screens/home/widgets/category.dart';
import 'package:game_app/screens/home/widgets/header.dart';
import 'package:game_app/screens/home/widgets/search_input.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimary,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Transform(
              transform: Matrix4.identity()..rotateZ(20),
              origin: const Offset(150, 30),
              child: Image.asset(
                'assets/images/bg_liquid.png',
                width: 250,
              ),
            ),
            Positioned(
              top: 200,
              right: 0,
              child: Transform(
                transform: Matrix4.identity()..rotateZ(20),
                origin: const Offset(180, 100),
                child: Image.asset('assets/images/bg_liquid.png', width: 200),
              ),
            ),
            Column(
              children: const [
                Header(),
                SearchInput(),
                Category(),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: _buildBottomNavigationbar(),
    );
  }

  Widget _buildBottomNavigationbar() {
    return Container(
      color: Colors.white,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  blurRadius: 5,
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 4)
            ]),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          child: BottomNavigationBar(
            selectedItemColor: kPrimary,
            type: BottomNavigationBarType.fixed,
            items: [
              const BottomNavigationBarItem(icon: Icon(Icons.home, size: 35,), label: "Home"),
              _navigationBarItem('Application', Icons.more_horiz),
              _navigationBarItem('Film', Icons.play_arrow_rounded),
              _navigationBarItem('Book', Icons.auto_stories_rounded),
            ],
          ),
        ),
      ),
    );
  }

  BottomNavigationBarItem _navigationBarItem(String label, IconData icon) {
    return BottomNavigationBarItem(
        label: label,
        icon: Container(
          padding: const EdgeInsets.all(7),
          decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.3),
              borderRadius: BorderRadius.circular(15)),
          child: Icon(
            icon,
            color: Colors.grey.withOpacity(0.7),
          ),
        ));
  }
}
