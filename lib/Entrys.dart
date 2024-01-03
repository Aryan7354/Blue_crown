import 'package:blue_crown/Age.dart';
import 'package:flutter/material.dart';

class Entrys_page extends StatefulWidget {
  const Entrys_page({super.key});

  @override
  State<Entrys_page> createState() => _Entrys_pageState();
}

class _Entrys_pageState extends State<Entrys_page> {
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
                'Entrys',
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
              itemCount: 50,
              itemBuilder: (context, index) {
                final Entry = index + 1; // Dates start from 1
                return GestureDetector(
                  onTap: (){
                    setState(() {
                      selectedIndex=index;
                    });Navigator.push(context, MaterialPageRoute(builder: (context) => Age_page()));
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
                        Entry.toString(),
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
