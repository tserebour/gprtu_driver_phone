import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../custom_widgets/CustomButton.dart';
import '../custom_widgets/custom_input.dart';
import '../custom_widgets/custom_scaffold.dart';
import '../models/user.dart';
import 'SignUpPage.dart';
import 'homepage.dart';
import 'package:shared_preferences/shared_preferences.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isLoading = false;

  String errorMessage = "";
  String phone = "";
  String password = "";

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;





    return CustomScaffold(
      body: Stack(
        children: [
          Padding(
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
                  onChanged: (String value) {
                    print(value);
                    phone = value;
                  },
                ),

                Gap(
                  height * 0.01,
                ),
                CustomInput(
                  hintText: "Enter Password here",
                  label: "Password",
                  obscureText: true,
                  obscurableText: true,
                  onChanged: (String value) {
                    password = value;
                  },
                ),

                Gap(
                  height * 0.01,
                ),

                CustomButton(
                  content: "Sign In",
                  onPressed: () async{

                    isLoading = true;
                    setState(() {

                    });

                    // 93993902

                    print(phone);

                    // String userResult = await User(
                    //     phone: phone,
                    //     password: password,
                    //
                    // ).signIn();

                    String userResult = "";


                    if(context.mounted){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HomePage()));

                    }


                    if(userResult == "Request failed with status: 500."){

                      setState(() {

                        errorMessage = "Something went wrong";

                      });

                    }else if(userResult == "Something went wrong"){
                      setState(() {

                        errorMessage = "Invalid Username and password";

                      });
                    }else if(userResult == "\"Invalid Username and Password\""){
                      setState(() {

                        errorMessage = "Invalid Username and password";

                      });
                    }else{

                      errorMessage = "";
                      setState(() {

                      });

                      // Obtain shared preferences.
                      final SharedPreferences prefs = await SharedPreferences.getInstance();

                      await prefs.setBool('signed_in', true);



                      var userMap = jsonDecode(userResult);

                      User user = User.fromJson(userMap);

                      await prefs.setString('user', userResult);


                      if(context.mounted){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HomePage()));

                      }



                    }









                    // User(
                    //     email: "",
                    //     password: "12345",
                    //     username: "tserebour"
                    // ).signIn();



                    isLoading = false;

                    setState(() {

                    });

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

          Center(
            child: isLoading
               ? const CircularProgressIndicator()
                : Container(),
          )
        ],
      ),
    );
  }
}
