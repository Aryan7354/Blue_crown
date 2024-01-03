import 'package:blue_crown/methods/continermethod.dart';
import 'package:flutter/material.dart';

class Create_My_Event extends StatefulWidget {
  const Create_My_Event({super.key});

  @override
  State<Create_My_Event> createState() => _Create_My_EventState();
}

class _Create_My_EventState extends State<Create_My_Event> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Create My Event",style: TextStyle(
              fontSize: 24,fontWeight: FontWeight.w600
          ),),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: myContainer(context),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextFormField(
                decoration: InputDecoration(
                  fillColor: Color(0xffF7F8F8),
                  filled: true,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(14),
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: 15,horizontal: 15),
                  hintText: "Event Lable",
                  hintStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Color(0xffADA4A5)),
                ),
              ),
              SizedBox(height: 10,),
              textfieldMethod(hinttext: "Date", suffiximage: "assets/images/Calendar.png"),
              textfieldMethod(hinttext: "Time", suffiximage: "assets/images/Clock.png"),
              textfieldMethod(hinttext: "Location", suffiximage: "assets/images/Location.png"),
            ],
          ),
        ),
      ),
    );
  }
  textfieldMethod({required String hinttext, required String suffiximage}){
    return Column(
      children: [
        TextFormField(
          decoration: InputDecoration(
            fillColor: Color(0xffF7F8F8),
            filled: true,
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(14),
            ),
            contentPadding: EdgeInsets.symmetric(vertical: 15,horizontal: 15),
            hintText: hinttext,
            hintStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Color(0xffADA4A5)),
            suffixIcon: Image.asset(suffiximage),
          ),
        ),
        SizedBox(height: 10,),
      ],
    );
  }
  Widget myContainer(context){
    return WidgetUtils.containerMethod(
        text: "Invite Friends",
        onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => Create_My_Event()));
        });
  }
}
