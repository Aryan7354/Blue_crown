import 'package:blue_crown/ChoosenEVent.dart';
import 'package:blue_crown/PublishEvent.dart';
import 'package:blue_crown/WordrobeClubAdminpage.dart';
import 'package:blue_crown/methods/continermethod.dart';
import 'package:flutter/material.dart';

class Club_AAdmin extends StatefulWidget {
  const Club_AAdmin({super.key});

  @override
  State<Club_AAdmin> createState() => _Club_AAdminState();
}

class _Club_AAdminState extends State<Club_AAdmin> {
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
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Center(
                  child: Text(
                    'Club Adminpage',
                    style: TextStyle(
                      color: Color(0xFF141414),
                      fontSize: 34,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ), SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: GestureDetector(onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Publish_Event() ));
                  },
                    child: Container(
                      height: 60,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Color(0xFF0D2243),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 25),
                            child: Text(
                              'Publish Event',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                                fontFamily: 'SF Pro Display',
                                fontWeight: FontWeight.w700,
                                height: 0,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 25),
                            child: Icon(Icons.calendar_month, color: Colors.white,),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                listMethod(text: 'Saturday November 12th'),
                listMethod(text: 'Wednesday November 16th'),
                listMethod(text: 'Friday November 18th'),
                SizedBox(
                  height: 70,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(child: myContainer(context)),
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
                            'costumer register',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),

    );
  }

  listMethod({required String text}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        height: 92,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      text,
                      style: TextStyle(
                        color: Color(0xFF909090),
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  GestureDetector(onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Chossen_Event()));
                  },
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 5,horizontal: 15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xFF0D2243),
                      ),
                      child: Text(
                        'Change',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 5,right: 6),
                    child: Image.asset('assets/images/WardrobeCrown.png'),
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
              )
            ],
          ),
        ),
      ),
    );
  }
  Widget myContainer(context){
    return WidgetUtils.containerMethod(
        text:"Wordrobe",

        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => Wordrobe_ClubAdminPage()));
          // Your onTap logic here
        });
  }

}
