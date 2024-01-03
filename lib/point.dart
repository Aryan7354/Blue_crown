import 'package:blue_crown/EarnMorePoints.dart';
import 'package:blue_crown/UsePoint.dart';
import 'package:flutter/material.dart';

class Point extends StatefulWidget {

   Point({super.key});

  @override
  State<Point> createState() => _PointState();
}

class _PointState extends State<Point> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Padding(
            padding: const EdgeInsets.only(right: 50),
            child: Text(
              'Points',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 150.98,
                decoration: ShapeDecoration(
                  color: Color(0xFF0D2243),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  shadows: [
                    BoxShadow(
                      color: Color(0x0C000000),
                      blurRadius: 14,
                      offset: Offset(0, 0),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: Text(
                        'Your Points',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/Big _ Crowne@3x.png',
                          height: 44,
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Text(
                          '135P',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 34,
                            fontWeight: FontWeight.w700,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              containerMethod(text: 'Use',ontap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) =>Use_Points ()));
              }),
              containerMethod(text: 'Get more'),
              containerMethod(text: 'How do i earn Use more points?',ontap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Earn_More_Points()));
              }),
            ],
          ),
        ),
      ),
    );
  }

  containerMethod({required String text,VoidCallback? ontap}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: GestureDetector(onTap: ontap,
        child: Container(
          height: 60,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
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
    );
  }
}
