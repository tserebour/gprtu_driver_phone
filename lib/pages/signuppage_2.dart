import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:gprtu_driver_phone/pages/signuppage3.dart';
import 'package:gprtu_driver_phone/providers/UserState.dart';

import '../custom_widgets/CustomButton.dart';
import '../custom_widgets/custom_input.dart';
import '../custom_widgets/custom_scaffold.dart';
import '../custom_widgets/custom_unfilled_button.dart';
import '../models/user.dart';
import 'LoginPage.dart';
import 'package:provider/provider.dart';

class SignUpPage2 extends StatefulWidget {
  const SignUpPage2({super.key});

  @override
  State<SignUpPage2> createState() => _SignUpPage2State();
}

class _SignUpPage2State extends State<SignUpPage2> {
  String firstname = "";
  String lastname = "";
  String location = "";
  String ghanaCardNumber = "";
  String license = "";
  String licenseClass = "";
  String address = "";

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return CustomScaffold(
      body: Padding(
        padding: EdgeInsets.only(
            top: height * 0.05,
            left: width * 0.1,
            bottom: height * 0.03,
            right: width * 0.1),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Profile Set Up",
                style: TextStyle(
                  fontSize: width * 0.07,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Center(
                child: Image.asset(
                  "assets/images/default_profile.png",
                  height: height * 0.15,
                ),
              ),
              CustomInput(
                hintText: "Enter Firstname here",
                label: "Firstname",
                onChanged: (String value) {
                  firstname = value;
                },
              ),
              CustomInput(
                hintText: "Enter Lastname here",
                label: "Lastname",
                onChanged: (String value) {
                  lastname = value;
                },
              ),
              CustomInput(
                hintText: "Enter Location here",
                label: "Location",
                onChanged: (String value) {
                  location = value;
                },
              ),
              Row(
                children: [
                  Expanded(
                      child: CustomInput(
                    hintText: "Enter Ghana Card number here",
                    label: "Ghana Card",
                    onChanged: (String value) {
                      ghanaCardNumber = value;
                    },
                  )),
                  Gap(width * 0.05),
                  Expanded(
                      child: CustomInput(
                    hintText: "Enter License number here",
                    label: "License",
                    onChanged: (String value) {
                      license = value;
                    },
                  )),
                ],
              ),
              CustomInput(
                hintText: "Enter License class here",
                label: "License class",
                onChanged: (String value) {
                  licenseClass = value;
                },
              ),
              CustomInput(
                hintText: "Enter Address here",
                label: "Address",
                onChanged: (String value) {
                  address = value;
                },
              ),
              Row(
                children: [
                  Expanded(
                    child: CustomUnfilledButton(
                      content: "Skip",
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginPage(),
                          ),
                        );
                      },
                    ),
                  ),
                  const Spacer(),
                  Expanded(
                    child: CustomButton(
                      content: "Next",
                      onPressed: () {



                        User user  = Provider.of<UserState>(context, listen: false).user;

                        user.firstname = firstname;
                        user.lastname = lastname;
                        user.location = location;
                        user.ghanaCardNumber = ghanaCardNumber;
                        user.licenseNumber = license;
                        user.licenseClass = licenseClass;
                        user.address = address;

                        context.read<UserState>().setUser(user: user);



                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignUpPage3(),
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
