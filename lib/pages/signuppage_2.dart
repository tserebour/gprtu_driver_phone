import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';

import '../custom_widgets/CustomButton.dart';
import '../custom_widgets/custom_input.dart';
import '../custom_widgets/custom_scaffold.dart';
import '../custom_widgets/custom_unfilled_button.dart';
import 'LoginPage.dart';
import 'VerifyPage.dart';
class SignUpPage2 extends StatefulWidget {
  const SignUpPage2({super.key});

  @override
  State<SignUpPage2> createState() => _SignUpPage2State();
}

class _SignUpPage2State extends State<SignUpPage2> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return CustomScaffold(
      body: Padding(
        padding: EdgeInsets.only(top:height*0.05,left: width*0.1, bottom: height*0.03, right: width*0.1),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Text(
                "Profile Set Up",
                style: TextStyle(
                  fontSize: width*0.07,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),


              Center(
                child: Image.asset(
                  "assets/images/default_profile.png",

                  height: height*0.15,
                ),
              ),

              CustomInput(hintText: "Enter Firstname here", label: "Firstname"),
              CustomInput(hintText: "Enter Lastname here", label: "Lastname"),
              CustomInput(hintText: "Enter Location here", label: "Location"),
              Row(
                children: [
                  Expanded(child: CustomInput(hintText: "Enter Ghana Card number here", label: "Ghana Card")),
                  Gap(
                    width*0.05
                  ),
                  Expanded(child: CustomInput(hintText: "Enter License number here", label: "License")),

                ],

              ),

              CustomInput(hintText: "Enter License class here", label: "License class"),
              CustomInput(hintText: "Enter Address here", label: "Address"),









              Row(
                children: [
                  Expanded(
                    child: CustomUnfilledButton(
                      
                      content: "Sign Up",
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const VerifyPage(),
                          ),
                        );
                      },
                    ),
                  ),

                  const Spacer(),

                  Expanded(
                    child: CustomButton(
                      
                      content: "Sign Up",
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const VerifyPage(),
                          ),
                        );
                      },
                    ),
                  )
                ],
              )



            ],
          ),
        ),
      ),
    );
  }
}
