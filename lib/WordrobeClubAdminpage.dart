import 'package:blue_crown/methods/continermethod.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter/material.dart';
import 'package:date_ranger/date_ranger.dart';

class Wordrobe_ClubAdminPage extends StatefulWidget {
  const Wordrobe_ClubAdminPage({super.key});

  @override
  State<Wordrobe_ClubAdminPage> createState() => _Wordrobe_ClubAdminPageState();
}

class _Wordrobe_ClubAdminPageState extends State<Wordrobe_ClubAdminPage> {
  List<DateTime?> datesList = [];
  List enteries = [
    {'leading': 'assets/images/member1.png'},
    {'leading': 'assets/images/Member2.png'},
    {'leading': 'assets/images/Member3.png'},
    {'leading': 'assets/images/Member4.png'},
  ];
  List enteries1 = [
    {'title': 'Zaire George'},
    {'title': 'Allison Vaccaro'},
    {'title': 'Gustavo Workman'},
    {'title': 'Hanna Baptista'},
  ];

  Future<void> DatePicker(BuildContext context) async {
    final DateTimeRange? picked = await showDateRangePicker(
      initialEntryMode: DatePickerEntryMode.calendar,
      context: context,
      firstDate: DateTime(2015),
      lastDate: DateTime(2050),
      initialDateRange: DateTimeRange(
        start: DateTime.now(),
        end: DateTime.now(),
      ),
    );

    if (picked != null) {
      final DateTime? startDate = picked.start;
      final DateTime? endDate = picked.end;

      if (startDate != null && endDate != null) {
        print('Selected dates: $startDate - $endDate');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Image.asset(
            'assets/images/Active User@3x.png',
            height: 24,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Text(
              '50',
              style: TextStyle(
                color: Colors.black,
                fontSize: 13.30,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: IconButton(
              icon: Icon(Icons.calendar_month,
                  size: 24, color: Color(0xFF0D2243)),
              onPressed: () {
                openDatePickerBox(context);
              },
            ),
          )
        ],
      ),
      body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
          child: Column(children: [
            Center(
              child: Text(
                'Wordrobe',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF141414),
                  fontSize: 34,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            SizedBox(
              child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: enteries.length,
                  itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.symmetric(vertical: 7),
                        child: ListTile(
                            leading: Image.asset(
                                enteries[index]['leading'].toString()),
                            title: Text(
                              enteries1[index]['title'].toString(),
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            trailing:
                                Text(index % 2 == 0 ? "Active" : "Inactive")),
                      )),
            ),
          ])),
    );
  }

  /// Show Date Picker Box...
  void openDatePickerBox(BuildContext context) async {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        insetPadding: EdgeInsets.symmetric(horizontal: 20),
        contentPadding: EdgeInsets.zero,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20))),
        content: Container(
          height: 450,
          width: MediaQuery.of(context).size.width - 60,
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              CalendarDatePicker2(
                  config: CalendarDatePicker2Config(
                    calendarType: CalendarDatePicker2Type.range,
                  ),
                  value: datesList,
                  onValueChanged: (dates) => {}),
              myContainer(context)
            ],
          ),
        ),
      ),
    );
  }

  Widget myContainer(context) {
    return WidgetUtils.containerMethod(
        text: "Submit",
        onTap: () {
          // Navigator.push(context, MaterialPageRoute(builder: (context) => Wordrobe_ClubAdminPage()));
          // Your onTap logic here
        });
  }
}
