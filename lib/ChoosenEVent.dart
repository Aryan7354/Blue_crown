import 'package:blue_crown/Addlist.dart';
import 'package:blue_crown/methods/continermethod.dart';
import 'package:flutter/material.dart';

class Chossen_Event extends StatefulWidget {
  const Chossen_Event({super.key});

  @override
  State<Chossen_Event> createState() => _Chossen_EventState();
}

class _Chossen_EventState extends State<Chossen_Event> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 25),
            child: Image.asset('assets/images/profile.png'),
          )
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: myContainer(context),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 91.09,
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Text(
                        'Friday November 18th',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF909090),
                          fontSize: 16,
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w500,
                          height: 0.09,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 5,
                            ),
                            child:
                                Image.asset('assets/images/WardrobeCrown.png'),
                          ),
                          Text(
                            '100',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w800,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              textFormMethod(hinttext: 'Lazzy Enjoy'),
              textFormMethod(hinttext: 'Friday'),
              textFormMethod(
                  hinttext: '18-11-2024',
                  suffixicon: Padding(
                    padding: const EdgeInsets.only(right: 25),
                    child: Icon(Icons.calendar_month),
                  )),
              textFormMethod(
                  hinttext: '50',
                  suffixicon: Image.asset('assets/images/WardrobeCrown.png')),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Color(0xFF0D2243),
                      ),
                      child: Center(
                        child: Text(
                          'Delete list',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Expanded(
                    child: Container(
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Color(0xFF9F9F9F),
                      ),
                      child: Center(
                        child: Text(
                          'Delete list',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  textFormMethod({required String hinttext, suffixicon}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: hinttext,
          fillColor: Color(0xFFE7E7E7),
          hintStyle: TextStyle(
            color: Color(0xFF0D2243),
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
          suffixIcon: suffixicon,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
    );
  }

  Widget myContainer(context) {
    return WidgetUtils.containerMethod(
        text: "update",
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => Add_List()));
          // Your onTap logic here
        });
  }
}
