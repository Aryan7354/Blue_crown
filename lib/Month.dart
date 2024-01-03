import 'package:blue_crown/Daypicker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class SelectMonth extends StatefulWidget {
  const SelectMonth({Key? key}) : super(key: key);

  @override
  State<SelectMonth> createState() => _SelectMonthState();
}

class _SelectMonthState extends State<SelectMonth> {
  // ... (existing code remains unchanged)
  List<Map<String, dynamic>> months = [
    {'title': 'January',"valuee":DateTime.january},
    {'title': 'February',"valuee":DateTime.february},
    {'title': 'March',"valuee":DateTime.march},
    {'title': 'April',"valuee":DateTime.april},
    {'title': 'May',"valuee":DateTime.may},
    {'title': 'June',"valuee":DateTime.june},
    {'title': 'July',"valuee":DateTime.july},
    {'title': 'August',"valuee":DateTime.august},
    {'title': 'September',"valuee":DateTime.september},
    {'title': 'October',"valuee":DateTime.october},
    {'title': 'November',"valuee":DateTime.november},
    {'title': 'December',"valuee":DateTime.december},
  ];

  PageController _pageController = PageController(initialPage: DateTime.now().month - 1); // Offset by 2

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      setState(() {});
    });
  }

  int selectedIndex = 0; // Track the selected index, initially set to 0

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Text(
              'Month',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF141414),
                fontSize: 34,
                fontFamily: 'SF Pro Display',
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
          Center(
            child: SizedBox(
              height: 250,
              child: ListView.builder(
                itemCount: months.length ,
                controller: _pageController,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  final visibleIndex = index ;

                  if (visibleIndex >= 0 && visibleIndex < months.length) {
                    return GestureDetector(

                        onTap: () {
                          setState(() {
                            selectedIndex = visibleIndex;
                          });

                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Days_picker(month: months[visibleIndex]['valuee'] ?? DateTime.january),
                          ),
                        );
                      },
                      child: Center(
                        child: Text(
                          months[visibleIndex]['title'] ?? '',
                          style: TextStyle(
                            fontSize: 38,
                            color: selectedIndex == visibleIndex ? Colors.black : Colors.grey, // Highlight selected index
                          ),
                        ),
                      ),
                    );
                  } else {
                    return SizedBox(height: 1);
                  }
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

