import 'package:flutter/material.dart';

class Friends extends StatefulWidget {
  const Friends({super.key});

  @override
  State<Friends> createState() => _FriendsState();
}

class _FriendsState extends State<Friends> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Friends',
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
            height: 0,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              listMethod(image: 'assets/images/Listitem2.png', titletext: 'Anika Septimus', subtitletext: 'Gretchen Culhane'),
              listMethod(image: 'assets/images/Listitem1.png', titletext: 'ANolan Rhiel Madsen', subtitletext: 'Carter Donin'),
              listMethod(image: 'assets/images/Listitem3.png', titletext: 'Terry Bator', subtitletext: 'Kianna Rosser'),
              listMethod(image: 'assets/images/Listitem4.png', titletext: 'Maren Franci', subtitletext: 'Mira Aminoff'),
              listMethod(image: 'assets/images/Listitem4.png', titletext: 'Maren Franci', subtitletext: 'Mira Aminoff'),  listMethod(image: 'assets/images/Listitem2.png', titletext: 'Anika Septimus', subtitletext: 'Gretchen Culhane'),
              listMethod(image: 'assets/images/Listitem1.png', titletext: 'ANolan Rhiel Madsen', subtitletext: 'Carter Donin'),
              listMethod(image: 'assets/images/Listitem3.png', titletext: 'Terry Bator', subtitletext: 'Kianna Rosser'),
              listMethod(image: 'assets/images/Listitem4.png', titletext: 'Maren Franci', subtitletext: 'Mira Aminoff'),
              listMethod(image: 'assets/images/Listitem4.png', titletext: 'Maren Franci', subtitletext: 'Mira Aminoff'),
              listMethod(image: 'assets/images/Listitem2.png', titletext: 'Anika Septimus', subtitletext: 'Gretchen Culhane'),
              listMethod(image: 'assets/images/Listitem1.png', titletext: 'ANolan Rhiel Madsen', subtitletext: 'Carter Donin'),
              listMethod(image: 'assets/images/Listitem3.png', titletext: 'Terry Bator', subtitletext: 'Kianna Rosser'),
              listMethod(image: 'assets/images/Listitem4.png', titletext: 'Maren Franci', subtitletext: 'Mira Aminoff'),
              listMethod(image: 'assets/images/Listitem4.png', titletext: 'Maren Franci', subtitletext: 'Mira Aminoff'),  listMethod(image: 'assets/images/Listitem2.png', titletext: 'Anika Septimus', subtitletext: 'Gretchen Culhane'),
              listMethod(image: 'assets/images/Listitem1.png', titletext: 'ANolan Rhiel Madsen', subtitletext: 'Carter Donin'),
              listMethod(image: 'assets/images/Listitem3.png', titletext: 'Terry Bator', subtitletext: 'Kianna Rosser'),
              listMethod(image: 'assets/images/Listitem4.png', titletext: 'Maren Franci', subtitletext: 'Mira Aminoff'),
              listMethod(image: 'assets/images/Listitem4.png', titletext: 'Maren Franci', subtitletext: 'Mira Aminoff'),
            ],
          ),
        ),
      ),
    );
  }

  listMethod({required image,required String titletext,required String subtitletext}) {
    return Column(
      children: [
        ListTile(
          leading: Image.asset(image),
          title:Text(
            titletext,
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,

              fontWeight: FontWeight.w700,

            ),
          ),
          subtitle: Text(
            subtitletext,
            style: TextStyle(
              color: Color(0xFFB0B0B0),
              fontSize: 12,

              fontWeight: FontWeight.w400,

            ),
          ),
        ),
        SizedBox(height: 10,),
      ],

    );
  }
}
