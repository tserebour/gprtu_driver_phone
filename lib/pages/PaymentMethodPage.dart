import 'package:flutter/material.dart';
import 'package:gprtu_driver_phone/custom_widgets/custom_scaffold.dart';
import "package:gap/gap.dart";
class PaymentMethodPage extends StatefulWidget {
  const PaymentMethodPage({super.key});

  @override
  State<PaymentMethodPage> createState() => _PaymentMethodPageState();
}

class _PaymentMethodPageState extends State<PaymentMethodPage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return CustomScaffold(
      appBar: AppBar(
        title: const Text('Payment Method'),
      ),
      body: Padding(

        padding: EdgeInsets.symmetric(
          horizontal: width*0.05,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Gap(
              height*0.05,
            ),

            Center(
              child: Container(
                width: width*0.7,
                height: height*0.2,
                decoration: BoxDecoration(

                  color: const Color.fromRGBO(211, 224, 255, 1),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: width*0.03,
                    vertical: height*0.02,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Row(
                        children: [
                          Text(
                            "Current Balance",
                            style: TextStyle(
                              color: Colors.black,

                              fontSize: 10,
                            ),
                          ),

                        ],
                      ),
                      const Text(
                        "XXXXXX.XX",
                        style: TextStyle(
                          color: Colors.black,

                          fontSize: 12,
                        ),
                      ),

                      Gap(
                        height*0.02,

                      ),

                      const Text(
                        "*** ***** **230",
                        style: TextStyle(
                          color: Colors.black,

                          fontSize: 12,
                        ),
                      ),
                      Gap(
                        height*0.02,

                      ),

                      const Row(
                        children: [
                          Text(
                            "Emmanuel",
                            style: TextStyle(
                              color: Colors.black,

                              fontSize: 12,
                            ),
                          ),

                          Spacer(

                          ),

                          Text(
                            "09/26",
                            style: TextStyle(
                              color: Colors.black,

                              fontSize: 12,
                            ),
                          )
                        ],
                      )

                    ],
                  ),
                ),
              ),
            ),

            Gap(
              height*0.05,
            ),

            const Text(
              "Card Details ",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,

                fontSize: 15,
              ),
            ),

            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    "Current Balance",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,

                      fontSize: 10,
                    )
                  ),
                  Spacer(),
                  Text(
                    "GHC 1,000",
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,

                      fontSize: 10,
                    )
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    "Account Number",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,

                      fontSize: 10,
                    )
                  ),
                  Spacer(),
                  Text(
                    "83929383899288",
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,

                      fontSize: 10,
                    )
                  ),


                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    "Account Type",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,

                      fontSize: 10,
                    )
                  ),
                  Spacer(),
                  Text(
                    "Visa Card",
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,

                      fontSize: 10,
                    )
                  ),


                ],
              ),
            ),

            Gap(
              height*0.05,
            ),

            Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: width*0.05,

                  ),
                  alignment: Alignment.center,
                  height: height*0.05,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Theme.of(context).primaryColor,
                      width: 1,
                    ),

                  ),
                  child: Text(
                    "Remove Card",
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.bold,

                      fontSize: 10,
                    ),
                  ),
                ),
                const Spacer(),

                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: width*0.05,

                  ),
                  alignment: Alignment.center,
                  height: height*0.05,
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Theme.of(context).primaryColor,
                      width: 1,
                    ),

                  ),
                  child: const Text(
                    "Save",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,

                      fontSize: 10,
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
}
