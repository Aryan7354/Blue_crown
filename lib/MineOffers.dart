import 'package:flutter/material.dart';

class Mine_Offers extends StatefulWidget {
  const Mine_Offers({super.key});

  @override
  State<Mine_Offers> createState() => _Mine_OffersState();
}

class _Mine_OffersState extends State<Mine_Offers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.maxFinite,
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xFF0D2243),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20, bottom: 10),
                      child: Image.asset('assets/images/Crown.png'),
                    ),
                    Text(
                      'Mine offers',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 55, vertical: 10),
                        child: Text(
                          'Collect points on every entrance visit at one of the clubs in the Samla app',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFFF5F5F5),
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: MediaQuery.of(context).size.height,width: MediaQuery.of(context).size.width,
                child: GridView.builder(
                    shrinkWrap: true,
                    physics: ScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      switch (index) {
                        case 0:
                          return gridMethod(
                            text: 'FREE ENTRY',
                            text1: '50p',
                            image: 'assets/images/Free entry.png',
                          );
                        case 1:
                          return gridMethod(
                            text: 'TABLE RESERVATION',
                            text1: '200p',
                            image: 'assets/images/TableReservation.png',
                          );
                        case 2:
                          return gridMethod(
                            text: 'TABLE RESERVATION',
                            text1: '250p',
                            image: 'assets/images/TableReservation.png',
                          );
                        case 3:
                          return gridMethod(
                            text: 'TABLE RESERVATION',
                            text1: '350p',
                            image: 'assets/images/TableReservation.png',
                          );
                        default:
                          return SizedBox.shrink();
                      }
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }

  gridMethod({required String text, required String text1, required image}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        // height: 202.98,
        // width: 202,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Text(
                    text,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              // SizedBox(
              //   height: 20,
              // ),
              Center(
                  child: Image.asset(
                image,
                height: 50,
              )),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 25, right: 7),
                        child: Image.asset(
                          'assets/images/Crown2.png',
                          height: 15,
                        ),
                      ),
                      Text(
                        text1,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 25),
                    child: Image.asset(
                      'assets/images/Arrow - Left 2.png',
                      height: 15,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
