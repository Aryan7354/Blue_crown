import 'package:blue_crown/Entrys.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Days_picker extends StatefulWidget {
  final int month;
  const Days_picker({Key? key,required this.month}) : super(key: key);

  @override
  State<Days_picker> createState() => _Days_pickerState();
}

class _Days_pickerState extends State<Days_picker> {
  static int getDaysInMonth(int year, int month) {
    if (month == DateTime.february) {
      final bool isLeapYear = (year % 4 == 0) && (year % 100 != 0) || (year % 400 == 0);
      return isLeapYear ? 29 : 28;
    }
    const List<int> daysInMonth = <int>[31, -1, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];
    return daysInMonth[month - 1];
  }



  int selectedIndex = -1; // Initialize selectedIndex as -1 to indicate no item is selected

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
                'Day',
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
              itemCount: getDaysInMonth(selectedIndex, widget.month),
              itemBuilder: (context, index) {
                final date = index + 1; // Dates start from 1
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = index; // Update the selected index on tap
                    });
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Entrys_page()));
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
                        date.toString(),
                        style: TextStyle(
                          fontSize: 20,
                          color: index == selectedIndex ? Colors.white : null, // Change text color of selected item
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

}