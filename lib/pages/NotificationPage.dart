import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gprtu_driver_phone/custom_widgets/custom_scaffold.dart';
import 'package:gap/gap.dart';
class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return CustomScaffold(
      appBar: AppBar(

      ),

      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 0.05),
        child: Column(
          children: [
            Row(

              children: [



                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: width*0.05,

                  ),
                  alignment: Alignment.center,
                  height: height*0.05,
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Theme.of(context).primaryColor,
                      width: 1,
                    ),

                  ),
                  child: const Text(
                    "All",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,

                      fontSize: 10,
                    ),
                  ),
                ),
                Gap(
                  width*0.02
                ),

                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: width*0.05,

                  ),
                  alignment: Alignment.center,
                  height: height*0.05,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Theme.of(context).primaryColor,
                      width: 1,
                    ),

                  ),
                  child: Text(
                    "Unread",
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.bold,

                      fontSize: 10,
                    ),
                  ),
                ),

                Spacer(),

                const Text(
                  "Mark all as read",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,

                    fontSize: 10,
                  )
                )
              ],

            ),


            Expanded(
              child: ListView(
                children: const [
                  ListTile(
                    leading: Icon(Icons.notifications),
                    title: Text(
                      "Dues",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
              
                        fontSize: 10,
                      ),
                    ),


                    subtitle: Text(
                      "Your dues payment deadline is due",
                      style: TextStyle(
                        color: Colors.grey,

              
                        fontSize: 10,
                      ),
                    ),

                    trailing: Text(
                      "1 min ago",
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      )
                    ),
                  ),
                  Divider(
                    
                    color: Colors.grey,
                  ),
                  ListTile(
                    leading: Icon(Icons.notifications),
                    title: Text(
                      "Dues",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,

                        fontSize: 10,
                      ),
                    ),


                    subtitle: Text(
                      "Your dues payment deadline is due",
                      style: TextStyle(
                        color: Colors.grey,


                        fontSize: 10,
                      ),
                    ),

                    trailing: Text(
                      "1 min ago",
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      )
                    ),
                  ),
                  Divider(
                    
                    color: Colors.grey,
                  ),
                  ListTile(
                    leading: Icon(Icons.notifications),
                    title: Text(
                      "Dues",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,

                        fontSize: 10,
                      ),
                    ),


                    subtitle: Text(
                      "Your dues payment deadline is due",
                      style: TextStyle(
                        color: Colors.grey,


                        fontSize: 10,
                      ),
                    ),

                    trailing: Text(
                      "1 min ago",
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      )
                    ),
                  ),
                  Divider(
                    
                    color: Colors.grey,
                  ),
                  ListTile(
                    leading: Icon(Icons.notifications),
                    title: Text(
                      "Dues",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,

                        fontSize: 10,
                      ),
                    ),


                    subtitle: Text(
                      "Your dues payment deadline is due",
                      style: TextStyle(
                        color: Colors.grey,


                        fontSize: 10,
                      ),
                    ),

                    trailing: Text(
                      "1 min ago",
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      )
                    ),
                  ),
                  Divider(
                    
                    color: Colors.grey,
                  ),
                  ListTile(
                    leading: Icon(Icons.notifications),
                    title: Text(
                      "Dues",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,

                        fontSize: 10,
                      ),
                    ),


                    subtitle: Text(
                      "Your dues payment deadline is due",
                      style: TextStyle(
                        color: Colors.grey,


                        fontSize: 10,
                      ),
                    ),

                    trailing: Text(
                      "1 min ago",
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      )
                    ),
                  ),
                  Divider(
                    
                    color: Colors.grey,
                  ),
                  ListTile(
                    leading: Icon(Icons.notifications),
                    title: Text(
                      "Dues",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,

                        fontSize: 10,
                      ),
                    ),


                    subtitle: Text(
                      "Your dues payment deadline is due",
                      style: TextStyle(
                        color: Colors.grey,


                        fontSize: 10,
                      ),
                    ),

                    trailing: Text(
                      "1 min ago",
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      )
                    ),
                  ),
                  Divider(
                    
                    color: Colors.grey,
                  ),
                  ListTile(
                    leading: Icon(Icons.notifications),
                    title: Text(
                      "Dues",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,

                        fontSize: 10,
                      ),
                    ),


                    subtitle: Text(
                      "Your dues payment deadline is due",
                      style: TextStyle(
                        color: Colors.grey,


                        fontSize: 10,
                      ),
                    ),

                    trailing: Text(
                      "1 min ago",
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      )
                    ),
                  ),
                  Divider(
                    
                    color: Colors.grey,
                  ),
                  ListTile(
                    leading: Icon(Icons.notifications),
                    title: Text(
                      "Dues",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,

                        fontSize: 10,
                      ),
                    ),


                    subtitle: Text(
                      "Your dues payment deadline is due",
                      style: TextStyle(
                        color: Colors.grey,


                        fontSize: 10,
                      ),
                    ),

                    trailing: Text(
                      "1 min ago",
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      )
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
