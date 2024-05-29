import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:gprtu_driver_phone/pages/signuppage_2.dart';

import '../custom_widgets/CustomButton.dart';
import '../custom_widgets/custom_scaffold.dart';
import '../custom_widgets/custom_verification_input.dart';
import '../models/user.dart';
import '../providers/UserState.dart';
import 'LoginPage.dart';
import 'package:provider/provider.dart';

class VerifyPage extends StatefulWidget {
  const VerifyPage({super.key});

  @override
  State<VerifyPage> createState() => _VerifyPageState();
}

class _VerifyPageState extends State<VerifyPage> {
  @override
  Widget build(BuildContext context) {


    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return CustomScaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: width*0.07),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,

              children: [
                Text(
                  "Verification",
                  style: TextStyle(
                    fontSize: width * 0.04*2,
                  ),
                ),

                Gap(height*0.01),

                Text(
                  "We have sent a code to (+233) 84839 38",
                  style: TextStyle(
                    fontSize: width * 0.04,
                    color: Colors.grey
                  ),

                ),

                const Row(

                  children: [

                    CustomVerificationInput(),
                    CustomVerificationInput(),
                    CustomVerificationInput(),
                    CustomVerificationInput(),
                    CustomVerificationInput(),
                    CustomVerificationInput(),


                  ],

                ),
                Gap(
                  height * 0.02,
                ),

                CustomButton(
                  width: width*0.5,
                    onPressed: (){

                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignUpPage2(),
                        ),
                      );


                    },
                    content: "Confirm Code")

              ],

            ),
          ),
        ),
      ),
    );
  }
}
