import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../custom_widgets/CustomButton.dart';
import '../custom_widgets/custom_input.dart';
import '../custom_widgets/custom_scaffold.dart';
import 'SignUpPage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;



    return CustomScaffold(
      body: Padding(
        padding: EdgeInsets.only(top:height*0.08, left: width*0.1, bottom: height*0.03, right: width*0.1,),
        child: ListView(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gap(
              height * 0.3,
            ),
            Text(
              "Login",
              style: TextStyle(
                fontSize: width * 0.05*2,
              ),
            ),


            Gap(
              height * 0.01,
            ),

            Text(
              "Enter Your Credentials to Sign In",
              style: TextStyle(
                fontSize: width * 0.02*2,
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            ),

            Gap(
              height * 0.01,
            ),




            CustomInput(
              hintText: "Enter Email here",
              label: "Email",
              obscureText: false,
              obscurableText: false,
            ),

            Gap(
              height * 0.01,
            ),
            CustomInput(
              hintText: "Enter Password here",
              label: "Password",
              obscureText: true,
              obscurableText: true,
            ),

            Gap(
              height * 0.01,
            ),

            CustomButton(
              content: "Sign In",
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => HomePage(),
                //   ),
                // );
              },
            ),

            Gap(
              height * 0.01,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account?",
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
                        builder: (context) => const SignUpPage(),
                      ),
                    );
                  },
                  child: Text(
                    "Sign Up",
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
