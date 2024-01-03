import 'package:blue_crown/EventsDetails.dart';
import 'package:flutter/material.dart';

class Listtt extends StatefulWidget {
  const Listtt({super.key});

  @override
  State<Listtt> createState() => _ListttState();
}

class _ListttState extends State<Listtt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  'Categories',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              GestureDetector(onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Event_Details()));
              },

                  child: Image.asset('assets/images/Birthday_Party.png')),
              Image.asset('assets/images/Aniversary.png'),
              Image.asset('assets/images/Night_party.png')
            ],
          ),
        ),
      ),
    );
  }
}
