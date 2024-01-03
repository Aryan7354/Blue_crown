import 'package:flutter/material.dart';

class Gender_Page extends StatefulWidget {
  const Gender_Page({super.key});

  @override
  State<Gender_Page> createState() => _Gender_PageState();
}

class _Gender_PageState extends State<Gender_Page> {
  int selectedIndex = -1;
  List Gender = [
    {'title': 'Male'},
    {'title': 'Female'},
    {'title': 'Other'},
  ];

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
                  'Gender',
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
                itemCount: Gender.length,
                itemBuilder: (context, index) {
                  final visibleIndex = index ;
                  if (visibleIndex >= 0 &&
                      visibleIndex < Gender.length) // Dates start from 1
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = visibleIndex;
                        });
                      },
                      child: Container(
                        // Set width according to your requirement
                        margin: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: index == selectedIndex ? Colors.blue : null,
                          // Change color of selected item
                          borderRadius:
                              BorderRadius.circular(10), // Optional decoration
                        ),
                        child: Center(
                          child: Text(
                            Gender[visibleIndex]['title'] ?? '',
                            style: TextStyle(
                              fontSize: 20,
                              color: selectedIndex == visibleIndex
                                  ? Colors.black
                                  : Colors.grey,
                            ),
                          ),
                        ),
                      ),
                    );
                  else {
                    return SizedBox(height: 1);
                  }
                },
              ),
            ),
          ],
        ));
  }
}
