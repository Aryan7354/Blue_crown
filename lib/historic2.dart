import 'package:blue_crown/point.dart';
import 'package:flutter/material.dart';

class Historic1 extends StatefulWidget {
  const Historic1({super.key});

  @override
  State<Historic1> createState() => _Historic1State();
}

class _Historic1State extends State<Historic1> with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 50),
              child: Text(
                'Historic',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Row(
              children: [
                Image.asset('assets/images/profile.png'),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Image.asset('assets/images/GroupCrown.png'),
                )
              ],
            ),
          ],
        ),
        bottom: TabBar(
          indicatorColor: Colors.black,
          controller: _tabController,
          tabs: [
            Text(
              'Club When',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 22,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              'Jacek',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 22,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
      body: TabBarView(
        physics: NeverScrollableScrollPhysics(),
        controller: _tabController,
        children: [
          Container(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  containerMethod(
                    titletext: 'Makeriet 22/1 - 2022',
                    subtitletext: '22:02 - 01:23',
                  ),
                  containerMethod(
                    titletext: 'Makeriet 11/11 - 2022',
                    subtitletext: '2:02 - 01:23',
                  ),
                  containerMethod(
                    titletext: 'Makeriet 10/11 - 2022',
                    subtitletext: '22:02 - 01:23',
                  ),
                  containerMethod(
                    titletext: 'Makeriet 11/11 - 2022',
                    subtitletext: '22:02 - 01:23',
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  containerMethod({
    required String titletext,
    required String subtitletext,
  }) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Point()));
          },
          child: ListTile(
            title: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                titletext,
                style: TextStyle(
                  color: Color(0xFF141414),
                  fontSize: 22,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                subtitletext,
                style: TextStyle(
                  color: Color(0xFF909090),
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ),
        Divider(
          thickness: 1,
        ),
      ],
    );
  }
}
