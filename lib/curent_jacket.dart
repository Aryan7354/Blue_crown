import 'package:flutter/material.dart';

import 'methods/continermethod.dart';

class Current_jacket extends StatefulWidget {
  const Current_jacket({super.key});

  @override
  State<Current_jacket> createState() => _Current_jacketState();
}

class _Current_jacketState extends State<Current_jacket> {
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
                'Current',
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
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              height: 352,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 30),
                    child: Text(
                      'You have number:',
                      style: TextStyle(
                        color: Color(0xFF141414),
                        fontSize: 24,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Text(
                      '85',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF0D2243),
                        fontSize: 116,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  myContainer(context)
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
  Widget myContainer(context){
    return WidgetUtils.containerMethod(
        text:"Take Out jacket",

        onTap: (){});
         
        }
  }

