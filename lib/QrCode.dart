import 'package:blue_crown/methods/continermethod.dart';
import 'package:flutter/material.dart';

class QR_Code extends StatefulWidget {
  const QR_Code({Key? key}) : super(key: key);

  @override
  State<QR_Code> createState() => _QR_CodeState();
}

class _QR_CodeState extends State<QR_Code> {
  int _counter = 0;
  final int incrementValue = 10;

  void _incrementCounter() {
    setState(() {
      _counter += incrementValue;
    });
  }

  void _decrementCounter() {
    setState(() {
      if (_counter > incrementValue) {
        _counter -= incrementValue;
      } else {
        _counter = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image.asset("assets/images/profile.png"),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 20),
        child: myContainer(context),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  "Create QR-Code",
                  style: TextStyle(fontSize: 34, fontWeight: FontWeight.w800),
                ),
              ),
              SizedBox(height: 35,),
              Container(
                height: 92,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: _incrementCounter,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Image.asset("assets/images/Plus.png"),
                        ),
                      ),
                      Row(
                        children: [
                          Image.asset(
                            "assets/images/Crown.png",height: 20,
                            color: Color(0xff0D2243),
                          ),
                          Text(
                            "$_counter",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: _decrementCounter,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Image.asset("assets/images/Minus@3x.png",height: 26,),
                        ),
                      )
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.05),
                          spreadRadius: 2,
                          blurRadius: 2,
                          offset: Offset(0, 2))
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
  Widget myContainer(context){
    return WidgetUtils.containerMethod(
        text:"Create QR-Code",
        onTap: () {
        });
  }
}
