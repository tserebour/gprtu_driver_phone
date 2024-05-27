import 'package:flutter/material.dart';

import '../custom_widgets/BottomNavBar.dart';
import '../custom_widgets/SideBar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

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
            prefixIcon:
            CircleAvatar(backgroundColor: Theme.of(context).canvasColor, child: const Icon(Icons.search, color: Colors.white)),
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
                )
            ),
            child: IconButton(
              icon: Icon(
                Icons.notifications,
                color: Theme.of(context).primaryColor,
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: width,
                height: height*0.3,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/uberwhite.jpg'),
                    fit: BoxFit.cover,
                  )
                ),
              ),


              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(
                      "Details",
                      style: TextStyle(
                        fontSize: width * 0.05,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    Row(
                      children: [
                        Expanded(
                          child: Card(
                            elevation: 2,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  CircleAvatar(
                                    radius: width * 0.04,
                                    backgroundColor: Colors.transparent,
                                    child: Icon(Icons.location_on, color: Theme.of(context).primaryColor,),
                                  ),

                                  Text(
                                    "current Location",
                                    style: TextStyle(
                                      fontSize: width * 0.03,
                                      color: Colors.grey,
                                      )
                                  ),

                                  Text(
                                      "Ejisu",
                                      style: TextStyle(
                                        fontSize: width * 0.05,
                                      )
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Card(
                            elevation: 2,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  CircleAvatar(
                                    radius: width * 0.04,
                                    backgroundColor: Colors.transparent,
                                    child: Icon(Icons.location_on, color: Theme.of(context).primaryColor,),
                                  ),

                                  Text(
                                    "current Queue",
                                    style: TextStyle(
                                      fontSize: width * 0.03,
                                      color: Colors.grey,
                                      )
                                  ),

                                  Text(
                                      "1st",
                                      style: TextStyle(
                                        fontSize: width * 0.05,
                                      )
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Card(
                            elevation: 2,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  CircleAvatar(
                                    radius: width * 0.04,
                                    backgroundColor: Colors.transparent,
                                    child: Icon(Icons.location_on, color: Theme.of(context).primaryColor,),
                                  ),

                                  Text(
                                    "Distance",
                                    style: TextStyle(
                                      fontSize: width * 0.03,
                                      color: Colors.grey,
                                      )
                                  ),

                                  Text(
                                      "40Km",
                                      style: TextStyle(
                                        fontSize: width * 0.05,
                                      )
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )


            ],
          ),

          Positioned(
              bottom: 0,

              child: BottomNavBar(
                currentIndex: 0,
              )
          )
        ],
      ),




    );
  }
}
