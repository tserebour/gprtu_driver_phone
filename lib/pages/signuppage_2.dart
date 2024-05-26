import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../custom_widgets/CustomButton.dart';
import '../custom_widgets/custom_input.dart';
import '../custom_widgets/custom_scaffold.dart';
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
        padding: EdgeInsets.only(top:height*0.08,left: width*0.1, bottom: height*0.03),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [


              SizedBox(
                height: height * 0.42,
                child: Padding(
                  padding: EdgeInsets.only(right: width*0.05),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            CustomInput(
                              hintText: "Enter Name here",
                              label: "Name",
                              obscureText: false,
                              obscurableText: false,
                            ),
                            CustomInput(
                              hintText: "Enter Mobile Number here",
                              label: "Mobile Number",
                              obscureText: true,
                              obscurableText: true,
                            ),
                          ],
                        ),
                      ),
                      Gap(width*0.03),
                      Expanded(
                        child: Column(
                          children: [
                            CustomInput(
                              hintText: "Enter Password here",
                              label: "Password",
                              obscureText: false,
                              obscurableText: false,
                            ),
                            CustomInput(
                              hintText: "Confirm Password here",
                              label: "Confirm Password",
                              obscureText: true,
                              obscurableText: true,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Gap(
                height * 0.05,
              ),

              Center(
                child: CustomButton(
                  width: width*0.50,
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

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account?",
                    style: TextStyle(
                      fontSize: width * 0.02,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                  Gap(width*0.003),
                  InkWell(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginPage(),
                        ),
                      );
                    },
                    child: Text(
                      "Sign In",
                      style: TextStyle(
                        fontSize: width * 0.02,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}
