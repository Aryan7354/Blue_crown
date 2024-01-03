import 'package:blue_crown/curent_jacket.dart';
import 'package:blue_crown/historic2.dart';
import 'package:flutter/material.dart';

class Wardrobe extends StatefulWidget {
  const Wardrobe({super.key});

  @override
  State<Wardrobe> createState() => _WardrobeState();
}

class _WardrobeState extends State<Wardrobe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 50),
              child: Text(
                'Wardrobe',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Row(
              children: [
                Image.asset('assets/images/profile.png'),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Image.asset('assets/images/GroupCrown.png'),
                )
              ],
            ),

          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              containerMethodd(image: 'assets/images/wardrobe.png',text: 'Current jacket',ontap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Current_jacket()));
              }),
              containerMethodd(image: 'assets/images/Histoy.png',text: 'History',ontap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Historic1()));
              }),
            ],

          ),
        ),
      )
    );
  }
  containerMethodd({required image,required String text,VoidCallback? ontap}){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
      child: Column(
        children: [
          GestureDetector(onTap: ontap,
            child: Container(
                height: 100,
            width: MediaQuery.of(context).size.width,
              decoration: ShapeDecoration(
                color: Colors.white,
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
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Image.asset(image),
                  ),
                  Text(
                    text,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  )        ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
