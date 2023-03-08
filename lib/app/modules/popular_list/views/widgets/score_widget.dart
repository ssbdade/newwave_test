import 'package:flutter/material.dart';

class ScoreCircle extends StatelessWidget {
  const ScoreCircle({Key? key, required this.score}) : super(key: key);
  final String score;
  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          colors: [
            Color(0xffffeb3b),
            Color(0xffd61557)
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(score.substring(0,1),
            style: const TextStyle(
              fontSize: 26,
              height: 26/20,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Text(score.substring(1),
              style: const TextStyle(
                fontSize: 16,
                height: 26/32,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}


