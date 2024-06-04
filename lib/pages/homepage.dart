import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

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
          
          
              SafeArea(
                child: Padding(
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
                ),
              )
          
          
            ],
          ),
          
          Positioned(
            top: height * 0.2,
            left: width *0.1,


            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                padding: const EdgeInsets.all(15),
                width: 0.8*width,
                height: height*0.2,
                decoration: BoxDecoration(
                  //linear gradient background
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      Theme.of(context).primaryColor,
                      Colors.white
                    ],

                  ),
                ),

                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "My Vehicle",
                          style: TextStyle(
                            fontSize: width * 0.03,

                          ),
                        ),

                        Text(
                          "My Vehicle",
                          style: TextStyle(
                            fontSize: width * 0.03,
                            fontWeight: FontWeight.bold
                          ),
                        ),

                        const Spacer(),
                        Text(
                          "Station Membership",
                          style: TextStyle(
                            fontSize: width * 0.03,

                          ),
                        ),

                        Text(
                          "Active",
                          style: TextStyle(
                              fontSize: width * 0.03,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        const Spacer()
                      ],
                    ),
                    const Spacer(),

                    Column(
                      children: [
                        Text(
                          "Status",
                          style: TextStyle(
                            fontSize: width * 0.03,
                            fontWeight: FontWeight.bold

                          ),
                        ),

                        Image.asset(
                          "assets/images/yellow_car.png",
                          width: width * 0.25,

                        ),
                        const Spacer(),

                        Text(
                          "Available",
                          style: TextStyle(
                              fontSize: width * 0.03,
                              fontWeight: FontWeight.bold,
                            color: Colors.yellow
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),


      bottomNavigationBar: BottomNavBar(currentIndex: 0,),


    );
  }
}
