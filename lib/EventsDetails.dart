import 'package:blue_crown/CreateEvent.dart';
import 'package:blue_crown/CreateList.dart';
import 'package:flutter/material.dart';

class Event_Details extends StatefulWidget {
  const Event_Details({super.key});

  @override
  State<Event_Details> createState() => _Event_DetailsState();
}

class _Event_DetailsState extends State<Event_Details> {
  List<bool> isStarredList = List.generate(100, (index) => false);
  void toggleStar(int index) {
    setState(() {
      isStarredList[index] = !isStarredList[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Stack(
            children: [
              Image.asset(
                'assets/images/Birthday.png',
                height: 308,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.22,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                  child: Container(
                    width: MediaQuery.of(context).size.width - 30,

                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'At the nightclub you are always greeted by at least two dance floors with different music styles, three bars and a wonderful atmosphere where something fun is always happening!The DJ raises the mood at 10 p.m. and soon after that the party starts.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          listMethod(image: 'assets/images/event1.png',index:0),
          listMethod(image: 'assets/images/events2.png',index:1),
          listMethod(image: 'assets/images/events3.png',index:2),
          listMethod(image: 'assets/images/events4.png',index:3),
          listMethod(image: 'assets/images/events4.png',index:4),
        ]),
      ),
    );
  }

  listMethod({required image,required int index}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) =>Create_List()));
              },
                child: Image.asset(
                  image,
                  height: 100,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Birthday Party',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.calendar_month,
                          color: Colors.grey,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text(
                            '12-03-2022',
                            style: TextStyle(
                              color: Color(0xFF828282),
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.watch_later_outlined,
                          color: Colors.grey,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text(
                            'Fri, 12:30 – 11:00 pm',
                            style: TextStyle(
                              color: Color(0xFF828282),
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.pin_drop,
                          color: Colors.grey,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text(
                            'Pune, Maharashtra',
                            style: TextStyle(
                              color: Color(0xFF828282),
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
          GestureDetector(
              onTap: () {
                toggleStar(index);
              },
              child: Icon(
                isStarredList[index] ? Icons.star : Icons.star_border,
                color: isStarredList[index] ? Colors.purple : null,
              )),
        ],
      ),
    );
  }
}
