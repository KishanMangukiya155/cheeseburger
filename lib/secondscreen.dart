import 'package:cheeseburger/homescreen.dart';
import 'package:flutter/material.dart';

class Secondscrren extends StatefulWidget {
  const Secondscrren({super.key});

  @override
  State<Secondscrren> createState() => _SecondscrrenState();
}

class _SecondscrrenState extends State<Secondscrren> {
  int selctd = 0;
  List<Map<String, dynamic>> list1 = [
    {'icon': 'asset/image/burger.png', 'name': 'BURGER'},
    {'icon': 'asset/image/pizza.png', 'name': 'PIZZA'},
    {'icon': 'asset/image/drinks.png', 'name': 'DRINKS'},
    {'icon': 'asset/image/sankar.png', 'name': 'DESSERT'},
    {'icon': 'asset/image/ice.png', 'name': 'SANKAR'},
    {'icon': 'asset/image/sankar.png', 'name': 'BURGER'},
  ];
  List<Map<String, dynamic>> list2 = [
    {
      'image': 'asset/image/1.png',
      'name': 'Bacon Cheese Burger',
      'sname': 'Cheese Burger',
      'price': '\$12.',
      'sprice': '99',
      'icon': Icons.shopping_bag_outlined,
    },
    {
      'image': 'asset/image/2.png',
      'name': 'Double Patty Burger',
      'sname': 'Meat Burger',
      'price': '\$9.',
      'sprice': '99',
      'icon': Icons.shopping_bag_outlined,
    },
    {
      'image': 'asset/image/3.png',
      'name': 'Luger Cheese Burger',
      'sname': 'Veggie Burger',
      'price': '\$6.',
      'sprice': '99',
      'icon': Icons.shopping_bag_outlined,
    },
    {
      'image': 'asset/image/4.png',
      'name': 'Grilled  Patty  Burger',
      'sname': 'Meat Burger',
      'price': '\$10.',
      'sprice': '50',
      'icon': Icons.shopping_bag_outlined,
    },
    {
      'image': 'asset/image/1.png',
      'name': 'Bacon Cheese Burger',
      'sname': 'Cheese Burger',
      'price': '\$12.',
      'sprice': '99',
      'icon': Icons.shopping_bag_outlined,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 35, left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    Homescreen()));
                      },
                      child: Icon(Icons.grid_view_outlined)),
                  Icon(Icons.search_rounded),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 10),
              child: Row(
                children: [
                  Text(
                    'Favourites',
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 625,
              width: 360,
              decoration: BoxDecoration(
                  color: Color(0xfff9c906),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(50),
                      topLeft: Radius.circular(50))),
              child: Padding(
                padding: const EdgeInsets.only(top: 30, left: 10, right: 10),
                child: Column(
                  children: [
                    Container(
                      height: 100,
                      width: 360,
                      //color: Colors.green,
                      child: ListView.builder(
                        itemCount: list1.length,
                        scrollDirection: Axis.horizontal,
                        physics: BouncingScrollPhysics(),
                        itemBuilder: (BuildContext context, int index) {
                          return Row(
                            children: [
                              Container(
                                padding: EdgeInsets.zero,
                                height: 90,
                                width: 90,
                                //color: Colors.red,
                                margin: EdgeInsets.symmetric(
                                  horizontal: 0,
                                ),
                                child: Column(
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          selctd = index;
                                        });
                                      },
                                      child: Container(
                                        height: 60,
                                        width: 60,
                                        decoration: BoxDecoration(
                                            color: selctd == index
                                                ? Colors.black
                                                : Color(0xffFBDE69),
                                            borderRadius:
                                                BorderRadius.circular(100)),
                                        child: Center(
                                          child: Image.asset(
                                            list1[index]['icon'],
                                            width: 30,
                                            height: 25,
                                            color: selctd == index
                                                ? Colors.white
                                                : Colors.black,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Text(list1[index]['name']),
                                  ],
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 10, left: 10, right: 10),
                      child: Container(
                        height: 483,
                        width: 360,
                        //color: Colors.black,
                        child: ListView.builder(
                          itemCount: list2.length,
                          padding: EdgeInsets.zero,
                          scrollDirection: Axis.vertical,
                          physics: BouncingScrollPhysics(),
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              height: 110,
                              width: 360,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20)),
                              margin: EdgeInsets.symmetric(
                                  vertical: 4, horizontal: 2),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 15.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      height: 70,
                                      width: 80,
                                      //  color: Colors.red,
                                      child: Image.asset(list2[index]['image']),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        top: 18,
                                        left: 10,
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(list2[index]['name'],
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16)),
                                          Text(
                                            list2[index]['sname'],
                                          ),
                                          SizedBox(
                                            height: 3,
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                list2[index]['price'],
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 20),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                  top: 4,
                                                ),
                                                child: Text(
                                                  list2[index]['sprice'],
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 15),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          right: 11, top: 2),
                                      child: Container(
                                        height: 40,
                                        width: 40,
                                        decoration: BoxDecoration(
                                            color: Colors.black,
                                            borderRadius:
                                                BorderRadius.circular(13)),
                                        child: Center(
                                            child: Icon(
                                          Icons.shopping_bag_outlined,
                                          color: Colors.white,
                                        )),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
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
