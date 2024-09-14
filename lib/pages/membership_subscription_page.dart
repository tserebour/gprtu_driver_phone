import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class MembershipSubscriptionPage extends StatefulWidget {
  const MembershipSubscriptionPage({super.key});

  @override
  State<MembershipSubscriptionPage> createState() => _MembershipSubscriptionPageState();
}

class _MembershipSubscriptionPageState extends State<MembershipSubscriptionPage> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Membership Subscription'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: width*0.1
        ),
        child: ListView(

          children: [
            Gap(height *0.1),
            Row(
              children: [
                Expanded(
                  child: Card(
                    
                    color: Colors.blue,
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: height*0.05, horizontal: width*0.02),

                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Standard",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: width*0.05,
                            )
                          ),

                          Gap(
                            height*0.01
                          ),

                          const Text(
                            "GHS 10",
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                            )
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                
                Expanded(
                  child: Card(
                    color: Colors.yellow,
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: height*0.05, horizontal: width*0.02),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Gold",
                            style: TextStyle(
                              fontSize: width*0.05,

                            )
                          ),

                          Gap(
                            height*0.01
                          ),

                          const Text(
                            "GHS 100",
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,

                            )
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),

            Gap(
              height*0.1
            ),


            Text(
              "Membership Details",
              style: TextStyle(
                fontSize: width*0.05,
                fontWeight: FontWeight.bold,
              ),
            ),

            Gap(
              height*0.02
            ),

            rowText("Current Membership", "Gold", width,height),
            Gap(
              height*0.02
            ),
            rowText("Station Membership", "Kumasi to Tafo", width,height),
            Gap(
                height*0.02
            ),
            rowText("Days Remaining", "30 days", width,height),
            Gap(
              height*0.04
            ),

            Row(
              children: [
                InkWell(
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: width*0.05,
                      vertical: height*0.01,
                    ),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.transparent,
                      border: Border.all(color: Theme.of(context).primaryColor, width: 1.0),
                    ),

                    child: Text(
                      "Remove Membership",
                      style: TextStyle(
                        fontSize: width * 0.04,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ),
                ),
                const Spacer(),
                InkWell(
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: width*0.05,
                      vertical: height*0.01,
                    ),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Theme.of(context).primaryColor,
                      border: Border.all(color: Theme.of(context).primaryColor, width: 1.0),
                    ),

                    child: Text(
                      "Save",
                      style: TextStyle(
                        fontSize: width * 0.03,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            )



          ],
        ),
      ),

    );
  }

  Widget rowText(String s, String t, width, height) {

    return Row(
      children: [
        Text(
          s,
          style: TextStyle(
            fontSize: width * 0.03,
            color: Colors.grey

          ),
        ),
        const Spacer(),

        Text(
          t,
          style: TextStyle(
            color: Colors.black,
            fontSize: width * 0.03,
            fontWeight: FontWeight.bold,

          ),
        )
      ],
    );

  }
}
