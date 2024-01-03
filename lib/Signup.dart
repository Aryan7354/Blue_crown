import 'package:blue_crown/bottombar.dart';
import 'package:blue_crown/login.dart';
import 'package:blue_crown/methods/continermethod.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              Text(
                'Create new account',
                style: TextStyle(
                  color: Color(0xFF141414),
                  fontSize: 34,
                  fontWeight: FontWeight.w800,
                ),
              ),
              Text(
                'Log in to continue.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF909090),
                  fontSize: 21,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 25,
              ),
              textfieldMethod(hinttext: 'Full Name'),
              textfieldMethod(hinttext: 'Email'),
              textfieldMethod(hinttext: 'Password'),
              textfieldMethod(hinttext: 'Date of Birth'),
              SizedBox(
                height: 25,
              ),
              myContainer,
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already registered?",
                    style: TextStyle(
                      color: Color(0xFF909090),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  GestureDetector(onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SignupPage()));
                  },
                    child: GestureDetector(onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                    },
                      child: Text(
                        'Log in here.',
                        style: TextStyle(
                          color: Color(0xFF0D2243),
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  )
                ],
              ),


            ],
          ),
        ),
      ),
    );
  }

  textfieldMethod({required String hinttext}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color(0xFFF7F8F8),
        ),
        child: TextFormField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: BorderSide.none),
            hintText: hinttext,
            hintStyle: TextStyle(
              color: Color(0xFFACA3A5),
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }

  Widget myContainer = WidgetUtils.containerMethod(
      text:" Sign up with Bank-Id",

      onTap: () {
        // Your onTap logic here
      });
}
