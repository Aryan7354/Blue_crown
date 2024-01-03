import 'package:blue_crown/wardrobe.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Wardrobe()));
            },



                child: Image.asset('assets/images/wardrobe.png')),
            Row(
              children: [
                Image.asset('assets/images/Scanner.png',),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Image.asset('assets/images/profile.png'),
                ),
                Image.asset('assets/images/GroupCrown.png')
              ],
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  'Nearby Events',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Image.asset('assets/images/Birthday_Party.png'),
              Image.asset('assets/images/Aniversary.png'),
              Image.asset('assets/images/Night_party.png')
            ],
          ),
        ),
      ),
    );
  }
}
