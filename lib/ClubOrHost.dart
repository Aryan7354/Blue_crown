import 'package:blue_crown/Club_AdminPage.dart';
import 'package:blue_crown/methods/continermethod.dart';
import 'package:flutter/material.dart';

class Club_Or_Host extends StatefulWidget {
  const Club_Or_Host({super.key});

  @override
  State<Club_Or_Host> createState() => _Club_Or_HostState();
}

class _Club_Or_HostState extends State<Club_Or_Host> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Image.asset('assets/images/profile.png'),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Text(
                    'Create account as \nclub or host',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF141414),
                      fontSize: 34,
                      fontFamily: 'SF Pro Display',
                      fontWeight: FontWeight.w800,
                      height: 0,
                    ),
                  ),
                ),
              ),
            textFieldMethod(hinttext: 'Full Name'),
            textFieldMethod(hinttext: 'City'),
            textFieldMethod(hinttext: 'Gender'),
            textFieldMethod(hinttext: 'Email'),
            textFieldMethod(hinttext: 'Phone Number'),
              SizedBox(
                height: 20,
              ),
              myContainer(context)
            ],
          ),
        ),
      ),
    );
  }

  textFieldMethod({required String hinttext}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: hinttext,
          hintStyle: TextStyle(
            color: Color(0xFFACA3A5),
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),border: OutlineInputBorder(
          borderSide: BorderSide(width: 1, color: Color(0xFFE7E7E7)),
          borderRadius: BorderRadius.circular(14)
        )
        ),
      ),
    );
  }
  Widget myContainer(context){
    return WidgetUtils.containerMethod(
        text:"Send Request",

        onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => Club_AAdmin()));
          // Your onTap logic here
        });
  }
}
