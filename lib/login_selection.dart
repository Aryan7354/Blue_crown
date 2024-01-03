import 'package:blue_crown/ClubOrHost.dart';
import 'package:blue_crown/login.dart';
import 'package:flutter/material.dart';

class Login_Selection extends StatefulWidget {
  const Login_Selection({super.key});

  @override
  State<Login_Selection> createState() => _Login_SelectionState();
}

class _Login_SelectionState extends State<Login_Selection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            containerMethod(text: "Log in as club/Host",onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context) => Club_Or_Host()))),
            containerMethod(text: "Log in as a consumer",onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
            }),
            containerMethod(text: "Create Account",),
          ],
        ),
      ),
    );
  }
  containerMethod({required String text, VoidCallback? onTap}){
    return Column(
      children: [
        SizedBox(height: 10,),
        GestureDetector(onTap:onTap,
          child: Container(
            height: 60,
            width: double.infinity,
            child: Center(
              child: Text(text,style: TextStyle(
                  fontSize: 17,fontWeight: FontWeight.w700,color: Colors.white
              ),),
            ),
            decoration: BoxDecoration(
                color: Color(0xff0D2243),
                borderRadius: BorderRadius.circular(30)
            ),
          ),
        ),
      ],
    );
  }
}
