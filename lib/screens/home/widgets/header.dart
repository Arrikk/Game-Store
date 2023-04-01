import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top,
          right: 25,
          left: 25,),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "Welcome",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
              Text(
                "What would you like to play",
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.white,
                ),
              ),
              
            ],
          ),
          Image.asset(
            'assets/images/avatar.png',
            width: 50,
          )
        ],
      ),
    );
  }
}
