import 'package:flutter/material.dart';

class Earn_More_Points extends StatefulWidget {
  const Earn_More_Points({super.key});

  @override
  State<Earn_More_Points> createState() => _Earn_More_PointsState();
}

class _Earn_More_PointsState extends State<Earn_More_Points> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Image.asset(
              'assets/images/profile.png',
            ),
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              'How do I earn more points?',
              style: TextStyle(
                color: Color(0xFF141414),
                fontSize: 26,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
            child: Text(
              'Points are awarded by entries on specific events.nWhen at the event you scan a QR- Code which will award you with points at that club. These points can be used when the club hosts. an event where the entry can be payed with points.nNote that you at least have to have the amount of points the club requires for that night in particular.',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF909090),
                fontSize: 20,
                fontFamily: 'SF Pro Display',
                fontWeight: FontWeight.w500,
              ),
            ),
          )
        ],
      ),
    );
  }
}
