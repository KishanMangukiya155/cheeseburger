import 'package:cheeseburger/secondscreen.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        clipBehavior: Clip.none,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 35, left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.arrow_back),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    Secondscrren()));
                      },
                      child: Icon(Icons.shopping_bag_outlined)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 10),
              child: Row(
                children: [
                  Text(
                    'Cheese\nBurger',
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Stack(
                  children: [
                    Container(
                      height: 300,
                      width: 360,
                      //color: Colors.grey,
                      child: Row(
                        children: [
                          Container(
                            width: 12,
                            height: 200,
                            decoration: BoxDecoration(
                              color: Color(0xfff9c906),
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 50, left: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Sugar', style: TextStyle(fontSize: 18)),
                          Text('4.9 g',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold)),
                          SizedBox(height: 15),
                          Text('Vitamin B-6',
                              style: TextStyle(
                                fontSize: 18,
                              )),
                          Text('12%',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold)),
                          SizedBox(height: 15),
                          Text('Fat',
                              style: TextStyle(
                                fontSize: 18,
                              )),
                          Text('17 g',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                    Positioned(
                      right: -100,
                      child: Container(
                        height: 280,
                        width: 320,
                        child:
                            Image.asset('asset/image/3.png', fit: BoxFit.fill),
                      ),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(height: 10),
            Container(
              height: 300,
              width: 360,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50)),
                  color: Colors.black),
              child: Padding(
                padding: const EdgeInsets.only(top: 40, left: 30, right: 30),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              '\$12.',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 35,
                                  fontWeight: FontWeight.bold),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 11, top: 10),
                              child: Text(
                                '50',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                        Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                color: Color(0xfff9c906),
                                borderRadius: BorderRadius.circular(15)),
                            child: Icon(Icons.shopping_bag_outlined)),
                      ],
                    ),
                    SizedBox(height: 20),
                    Column(
                      children: [
                        Text(
                            'Combine ground beet,BBQ sauce,salt,garlic '
                            'powder,and pepper in a medium-sized bowl.'
                            'Mix just until combined with your hands and shape '
                            'into 4 patties,about 3/4-inch thick.The grilledLe'
                            'Pigeon Burger has a nice,smoky flavor that is '
                            'enhanced with each topping',
                            style: TextStyle(color: Colors.white)),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
