import 'package:blue_crown/Gender.dart';
import 'package:flutter/material.dart';

class Age_page extends StatefulWidget {
  const Age_page({super.key});

  @override
  State<Age_page> createState() => _Age_pageState();
}

class _Age_pageState extends State<Age_page> {
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  'Age',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF141414),
                    fontSize: 34,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 250,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: 110,
                itemBuilder: (context, index) {
                  final Age = index + 1; // Dates start from 1
                  return GestureDetector(
                    onTap: (){
                      setState(() {
                        selectedIndex=index;
                      });
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Gender_Page()));

                    },
                    child: Container(
                      // Set width according to your requirement
                      margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: index == selectedIndex ? Colors.blue : null, // Change color of selected item
                        borderRadius: BorderRadius.circular(10), // Optional decoration
                      ),
                      child: Center(
                        child: Text(
                          Age.toString(),
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        )
    );
  }
}
