import 'package:blue_crown/methods/continermethod.dart';
import 'package:flutter/material.dart';

class Add_List extends StatefulWidget {
  const Add_List({super.key});

  @override
  State<Add_List> createState() => _Add_ListState();
}

class _Add_ListState extends State<Add_List> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Image.asset('assets/images/profile.png'),
          )
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        child: myContainer(context),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
        child: Column(
          children: [
            Center(
              child: Text(
                'Add List',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF141414),
                  fontSize: 34,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            textFormMethod(hinttext: "Full Name"),
            textFormMethod(hinttext: "Age"),
            textFormMethod(hinttext: "Hove Mony"),
          ],
        ),
      ),
    );
  }

  textFormMethod({
    required String hinttext,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: hinttext,
          fillColor: Color(0xFFACA3A5),
          hintStyle: TextStyle(
            color: Color(0xFFACA3A5),
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
    );
  }
  Widget myContainer(context) {
    return WidgetUtils.containerMethod(
        text: "Add",
        onTap: () {
          // Navigator.push(context, MaterialPageRoute(builder: (context) => Add_List()));
        });
  }

}
