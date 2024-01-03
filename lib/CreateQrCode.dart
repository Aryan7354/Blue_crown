import 'package:blue_crown/QrCode.dart';
import 'package:blue_crown/methods/continermethod.dart';
import 'package:flutter/material.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';

class Create_Qr_Code extends StatefulWidget {
  const Create_Qr_Code({super.key});

  @override
  State<Create_Qr_Code> createState() => _Create_Qr_CodeState();
}

class _Create_Qr_CodeState extends State<Create_Qr_Code> {
  Future<void> _handleRefresh() async{

  }


  int age = 18;
  int Point = 18;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 25),
            child: Image.asset('assets/images/profile.png'),
          )
        ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 20),
        child: myContainer(context),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: LiquidPullToRefresh(
          onRefresh: _handleRefresh,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  'Saturday November 14th',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF141414),
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              textMethod(
                  text: "Time",
                  maxlines: 1,
                  edgeInsets: EdgeInsets.symmetric(horizontal: 15, vertical: 17)),
              textMethod(
                  text: "Style",
                  maxlines: 1,
                  edgeInsets: EdgeInsets.symmetric(horizontal: 15, vertical: 17)),
              textMethod(
                  text: "Discription",
                  edgeInsets: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  maxlines: 5),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 10),
                child: Text(
                  'Age',
                  style: TextStyle(
                    color: Color(0xFF1E1E1E),
                    fontSize: 20,
                    fontFamily: 'Be Vietnam Pro',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Slider(
                activeColor: Color(0xFF0D2243),
                label: "Select Age",
                value: age.toDouble(),
                onChanged: (value) {
                  setState(() {
                    age = value.toInt();
                  });
                },
                min: 18,
                max: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Min 18',
                      style: TextStyle(
                        color: Color(0xFF1E1E1E),
                        fontSize: 12,
                        fontFamily: 'Be Vietnam Pro',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 25),
                      child: Text(
                        'Max 30',
                        style: TextStyle(
                          color: Color(0xFF1E1E1E),
                          fontSize: 12,
                          fontFamily: 'Be Vietnam Pro',
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  'Points',
                  style: TextStyle(
                    color: Color(0xFF1E1E1E),
                    fontSize: 20,
                    fontFamily: 'Be Vietnam Pro',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Slider(
                activeColor: Color(0xFF0D2243),
                label: "Select Age",
                value: Point.toDouble(),
                onChanged: (value) {
                  setState(() {
                    Point = value.toInt();
                  });
                },
                min: 18,
                max: 30,
              ),

            ],
          ),
        ),
      ),
    );
  }

  Widget textMethod(
      {required String text,
      EdgeInsetsGeometry? edgeInsets,
      required int maxlines}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Align(
        alignment: Alignment.topLeft,
        child: TextFormField(
          maxLines: maxlines,
          decoration: InputDecoration(
            contentPadding: edgeInsets ?? EdgeInsets.all(20.0),
            fillColor: Color(0xFFF7F8F8),
            hintText: text,
            hintStyle: TextStyle(
              color: Color(0xFFACA3A5),
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(17),
              borderSide: BorderSide(width: 1, color: Color(0xFFE7E7E7)),
            ),
          ),
        ),
      ),
    );
  }
  Widget myContainer(context) {
    return WidgetUtils.containerMethod(
        text: "Create Qr Code",
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => QR_Code()));
          // Your onTap logic here
        });
  }

}
