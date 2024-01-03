import 'package:flutter/material.dart';

class Create_List extends StatefulWidget {
  const Create_List({Key? key}) : super(key: key);

  @override
  State<Create_List> createState() => _Create_ListState();
}

class _Create_ListState extends State<Create_List> {
  List<bool> isCheckedList = List.filled(6, false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image.asset("assets/images/profile.png"),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 130,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        child: Image.asset(
                          'assets/images/Add Sign.png',
                          height: 44,
                        ),
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                  content: Container(
                                width: double.maxFinite,
                                height: 512,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 15),
                                  child: SingleChildScrollView(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Center(
                                          child: Text(
                                            'My List',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 24,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w600,
                                              height: 0,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 25,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 10),
                                          child: Row(
                                            children: [
                                              Image.asset(
                                                  'assets/images/listevents1.png'),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 15),
                                                child: Text(
                                                  'Giana Curtis',
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 10),
                                          child: Row(
                                            children: [
                                              Image.asset(
                                                  'assets/images/listevents2.png'),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 15),
                                                child: Text(
                                                  'Mira Vetrovs',
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 10),
                                          child: Row(
                                            children: [
                                              Image.asset(
                                                  'assets/images/listevents3.png'),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 15),
                                                child: Text(
                                                  'Ruben Levin',
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 10),
                                          child: Row(
                                            children: [
                                              Image.asset(
                                                  'assets/images/listevents4.png'),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 15),
                                                child: Text(
                                                  'Jaylon Baptista',
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 30,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            SizedBox(
                                              height: 60,
                                              child: ElevatedButton(
                                                child: Center(
                                                  child: Text(
                                                    'Create list',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 17,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                    ),
                                                  ),
                                                ),
                                                style: ElevatedButton.styleFrom(
                                                  backgroundColor:
                                                      Color(0xFF0D2243),
                                                ),
                                                onPressed: () {
                                                  showDialog(
                                                      context: context,
                                                      builder: (context) {
                                                        return AlertDialog(
                                                          content: Container(
                                                            width: double
                                                                .maxFinite,
                                                            height: 422,
                                                            child:
                                                                SingleChildScrollView(
                                                              child: Padding(
                                                                padding: const EdgeInsets
                                                                    .symmetric(
                                                                    horizontal:
                                                                        15,
                                                                    vertical:
                                                                        15),
                                                                child: Column(
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    Text(
                                                                      'Your request has been sent!',
                                                                      style:
                                                                          TextStyle(
                                                                        color: Colors
                                                                            .black,
                                                                        fontSize:
                                                                            24,
                                                                        fontFamily:
                                                                            'Poppins',
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                        height:
                                                                            0,
                                                                      ),
                                                                    ),
                                                                    SizedBox(
                                                                      height:
                                                                          25,
                                                                    ),
                                                                    Image.asset(
                                                                      'assets/images/Request sent@3x.png',
                                                                    ),
                                                                    SizedBox(
                                                                      height:
                                                                          20,
                                                                    ),
                                                                    Text(
                                                                      'Ok',
                                                                      style:
                                                                          TextStyle(
                                                                        color: Color(
                                                                            0xFF34A853),
                                                                        fontSize:
                                                                            24,
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                      ),
                                                                    )
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        );
                                                      });
                                                },
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ));
                            },
                          );
                        }),
                    Text(
                      "Create list",
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff484C52)),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                    color: Color(0xffF4F4FF),
                    borderRadius: BorderRadius.circular(15)),
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                decoration: InputDecoration(
                    fillColor: Color(0xffF4F4FF),
                    filled: true,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                    prefixIcon: Icon(Icons.search),
                    hintText: "Search",
                    hintStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff0D2243)),
                    suffixIcon: Image.asset('assets/images/Filter.png')),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("3 Persons",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w700)),
                    Text("Clear All",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff686868))),
                  ],
                ),
              ),
              listtileMethod(
                index: 0,
                leadingimage: "assets/images/Listitem1.png",
                titletext: "Nolan Rhiel Madsen",
              ),
              listtileMethod(
                index: 1,
                leadingimage: "assets/images/Listitem2.png",
                titletext: "Anika Septimus",
              ),
              listtileMethod(
                index: 2,
                leadingimage: "assets/images/Listitem3.png",
                titletext: "Jocelyn Workman",
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("3 Persons",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w700)),
                    Text("Clear All",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff686868))),
                  ],
                ),
              ),
              listtileMethod(
                  index: 3,
                  leadingimage: "assets/images/Listitem4.png",
                  titletext: "Lydia Siphron"),
              listtileMethod(
                  index: 4,
                  leadingimage: "assets/images/Listitem4.png",
                  titletext: "Lydia Siphron"),
              listtileMethod(
                  index: 5,
                  leadingimage: "assets/images/Listitem4.png",
                  titletext: "Lydia Siphron"),
            ],
          ),
        ),
      ),
    );
  }

  listtileMethod(
      {required int index,
      required String leadingimage,
      required String titletext}) {
    return ListTile(
      leading: Image.asset(leadingimage),
      title: Text(
        titletext,
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
      ),
      subtitle: Text(
        "Johan Smihs",
        style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: Color(0xffB0B0B0)),
      ),
      trailing: Checkbox(
        checkColor: Colors.white,
        activeColor: Color(0xff0D2243),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        value: isCheckedList[index],
        onChanged: (bool? value) {
          setState(() {
            isCheckedList[index] = value!;
            handleCheckboxState(index);
          });
        },
      ),
    );
  }

  void handleCheckboxState(int index) {
    switch (index) {
      case 0:
        if (isCheckedList[index]) {
          print('Checkbox for index 0 is checked');
        } else {
          print('Checkbox for index 0 is unchecked');
        }
        break;
      case 1:
        break;
      case 2:
        break;
      case 3:
        break;
      case 4:
        break;
      case 5:
        break;
    }
  }
}
