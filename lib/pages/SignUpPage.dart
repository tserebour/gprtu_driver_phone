import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:gprtu_driver_phone/providers/UserState.dart';


import '../custom_widgets/CustomButton.dart';
import '../custom_widgets/custom_input.dart';
import '../custom_widgets/custom_scaffold.dart';
import '../models/user.dart';
import 'LoginPage.dart';
import 'VerifyPage.dart';
import 'package:provider/provider.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();
  
  
  //TextControllers for all the textformfields

  String phone = "";
  String password = "";
  String confirmPassword = "";

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return CustomScaffold(
      body: Form(
        key: _formKey,

        child: Padding(
          padding: EdgeInsets.only(top:height*0.08,left: width*0.1, bottom: height*0.03,right: width*0.1),
          child: ListView(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Register",
                style: TextStyle(
                  fontSize: width * 0.05 * 2,
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
                hintText: "Enter Mobile Number here",
                label: "Mobile Number",


                validator: (value) {

                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  // if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                  //   return 'Please enter a valid email address';
                  // }
                  return null;
                }, onChanged: (String value) {
                  phone = value;
              },
              ),
              Gap(width*0.03),
              CustomInput(
                hintText: "Enter Password here",
                label: "Password",
                obscureText: true,
                obscurableText: true,

                validator: (value) {

                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  // if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                  //   return 'Please enter a valid email address';
                  // }
                  return null;
                }, onChanged: (String value) {
                  password = value;
              },
              ),
              CustomInput(
                hintText: "Confirm Password here",
                label: "Confirm Password",
                obscureText: true,
                obscurableText: true,

                validator: (value) {

                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  // if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                  //   return 'Please enter a valid email address';
                  // }
                  return null;
                }, onChanged: (String value) {
                  confirmPassword = value;
              },
              ),

              Gap(
                height * 0.05,
              ),

              Center(
                child: CustomButton(

                  content: "Sign Up",
                  onPressed: () {

                    
                    if(_formKey.currentState!.validate()) {
                      User user  = Provider.of<UserState>(context, listen: false).user;
                      
                      user.password = password;

                      user.phone = phone;

                      context.read<UserState>().setUser(user: user);





                      


                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const VerifyPage(),
                        ),
                      );

                    }                  },
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
      ),
    );
  }
}
