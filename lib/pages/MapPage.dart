import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gprtu_driver_phone/custom_widgets/BottomNavBar.dart';
import 'package:gprtu_driver_phone/pages/homepage.dart';

import '../custom_widgets/DisplayMap.dart';
import '../custom_widgets/SideBar.dart';
import 'NotificationPage.dart';

class MapPage extends StatefulWidget {
  const MapPage({super.key});

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      drawer: const SideBar(),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: TextField(
          decoration: InputDecoration(
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            hintText: 'Search Location',
            hintStyle: const TextStyle(color: Colors.grey),
            prefixIcon: CircleAvatar(
                backgroundColor: Theme.of(context).canvasColor,
                child: const Icon(Icons.search, color: Colors.white)),
            filled: true,
            fillColor: Colors.white,
            contentPadding: const EdgeInsets.all(10.0),
            enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              borderSide: BorderSide(
                color: Colors.white,
              ),
            ),
            focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              borderSide: BorderSide(
                color: Colors.white,
              ),
            ),
          ),
        ),
        actions: [
          Container(
            decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                border: Border.all(
                  color: Theme.of(context).primaryColor,
                  width: 1,
                )),
            child: IconButton(
              icon: Icon(
                Icons.notifications,
                color: Theme.of(context).primaryColor,
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const NotificationPage()));
              },
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          DisplayMap(
            onMarkerPressed: () {
              // showPanel = true;
              // selectedPanel = 1;
              // setState(() {});
            },
          ),

        ],
      ),
      bottomNavigationBar: BottomNavBar(
        currentIndex: 1,
      ),
    );
  }
}
