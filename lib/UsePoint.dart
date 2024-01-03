import 'package:blue_crown/bottombar.dart';
import 'package:blue_crown/methods/continermethod.dart';
import 'package:flutter/material.dart';

import 'Usepoints1.dart';

class Use_Points extends StatefulWidget {

  Use_Points({super.key});

  @override
  State<Use_Points> createState() => _Use_PointsState();
}

class _Use_PointsState extends State<Use_Points> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Use Points',
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),
            Image.asset('assets/images/profile.png'),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(child: myContainer('Date')),
                  SizedBox(
                    width: 25,
                  ),
                  Expanded(
                    child: Container(
                      height: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/images/WardrobeCrown.png'),
                          Text(
                            '135P',
                            style: TextStyle(
                              color: Color(0xFF0D2243),
                              fontSize: 17,
                              fontWeight: FontWeight.w700,
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 25,
              ),
              containerMethod(text: '100', text1: 'Club 1 Entry'),
              containerMethod(text: '200', text1: 'Club 2 Entry'),
              containerMethod(text: '100', text1: 'Club 3 Entry'),
            ],
          ),
        ),
      ),
    );
  }

  Widget myContainer(context) {
    return WidgetUtils.containerMethod(text: "Login", onTap: () {});
  }

  containerMethod(
      {required String text, VoidCallback? ontap, required String text1}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Column(
        children: [
          Text(
            text1,
            style: TextStyle(
              color: Color(0xFF0A0A0A),
              fontSize: 16,
              fontFamily: 'SF Pro Display',
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          GestureDetector(onTap: ontap,
            child: GestureDetector(
              onTap:()=> Navigator.push(context, MaterialPageRoute(builder: (context) => Use_Points1(point: text,))),
              child: Container(
                height: 60,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  shadows: [
                    BoxShadow(
                      color: Color(0x0C000000),
                      blurRadius: 34,
                      offset: Offset(0, 0),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: Center(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/WardrobeCrown.png'),
                    Text(
                      text,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    )
                  ],
                )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
