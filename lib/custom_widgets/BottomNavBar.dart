import 'package:flutter/material.dart';
import 'package:gprtu_driver_phone/pages/homepage.dart';
import "package:salomon_bottom_bar/salomon_bottom_bar.dart";

import '../pages/MapPage.dart';



class BottomNavBar extends StatefulWidget {
  int currentIndex;

  BottomNavBar({super.key, required this.currentIndex});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return SalomonBottomBar(
      backgroundColor: Colors.transparent,
      currentIndex: widget.currentIndex,
      items: [
        SalomonBottomBarItem(
          icon: InkWell(
            child: const Icon(Icons.details),
            onTap: () {
              if (widget.currentIndex != 0) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomePage()),
                );
              }
            },
          ),
          title: const Text("Home"),
        ),


        SalomonBottomBarItem(
          icon: InkWell(
            child: const Icon(Icons.map),
            onTap: () {
              if (widget.currentIndex != 1) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MapPage()),
                );
              }
            },
          ),
          title: const Text("Map"),
        ),
        SalomonBottomBarItem(
          icon: InkWell(child: const Icon(Icons.person),onTap: (){
            if (widget.currentIndex != 2) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MapPage()),
              );
            }
          },),
          title: const Text("Profile"),
        ),


      ],
    );
  }
}
