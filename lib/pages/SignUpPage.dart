import 'package:flutter/material.dart';
import 'package:gap/gap.dart';


import '../custom_widgets/CustomButton.dart';
import '../custom_widgets/custom_input.dart';
import '../custom_widgets/custom_scaffold.dart';
import 'LoginPage.dart';
import 'VerifyPage.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return CustomScaffold(
      body: Padding(
        padding: EdgeInsets.only(top:height*0.08,left: width*0.1, bottom: height*0.03,right: width*0.1),
        child: ListView(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Register",
              style: TextStyle(
                fontSize: width * 0.05*2,
              ),
            ),


            Gap(
              height * 0.02,
            ),

            Text(
              "Enter Your Credentials to Sign Up",
              style: TextStyle(
                fontSize: width * 0.02*2,
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            ),

            Gap(
              height * 0.02,
            ),




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
            Gap(width*0.03),
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

            Gap(
              height * 0.05,
            ),

            Center(
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
            ),

            Gap(
              height * 0.01,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account?",
                  style: TextStyle(
                    fontSize: width * 0.02*2,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
                Gap(width*0.01),
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
                      fontSize: width * 0.02*2,
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
    );
  }
}
