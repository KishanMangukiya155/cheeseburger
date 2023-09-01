import 'package:cheeseburger/homescreen.dart';
import 'package:cheeseburger/secondscreen.dart';
import 'package:flutter/material.dart';

class Bottombar extends StatefulWidget {
  const Bottombar({super.key});

  @override
  State<Bottombar> createState() => _BottombarState();
}

class _BottombarState extends State<Bottombar> {
  List<Map<String, dynamic>> list1 = [
    {
      'icon': Icons.storefront_outlined,
    },
    {
      'icon': Icons.search_rounded,
    },
    {
      'icon': Icons.brightness_low_rounded,
    },
    {
      'icon': Icons.person,
    },
    {
      'icon': Icons.home,
    },
  ];
  int selectedIndex = 0;
  List screen = [
    Homescreen(),
    Secondscrren(),
    Homescreen(),
    Secondscrren(),
    Secondscrren(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.orange.shade100,
      body: screen[selectedIndex],
      bottomNavigationBar: Container(
        height: 65,
        //color: Colors.white,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(35),
            topRight: Radius.circular(35),
          ),
        ),
        child: Row(
          children: List.generate(
            list1.length,
            (index) => GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                child: Container(
                    height: 40,
                    width: 50,
                    color: Colors.black26,
                    margin: EdgeInsets.symmetric(horizontal: 11),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(9.0),
                          child: Icon(
                            list1[index]['icon'],
                            size: 32,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ))),
          ),
        ),
      ),
    );
  }
}
