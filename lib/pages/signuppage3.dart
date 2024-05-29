import 'package:flutter/material.dart';
import 'package:gprtu_driver_phone/pages/signuppage4.dart';

import '../custom_widgets/CustomButton.dart';
import '../custom_widgets/custom_input.dart';
import '../custom_widgets/custom_scaffold.dart';

import '../custom_widgets/custom_unfilled_button.dart';
import '../models/user.dart';
import '../providers/UserState.dart';
import 'LoginPage.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';


class SignUpPage3 extends StatefulWidget {
  const SignUpPage3({super.key});

  @override
  State<SignUpPage3> createState() => _SignUpPage3State();
}

class _SignUpPage3State extends State<SignUpPage3> {

  String vehicleMode = "";
  String registrationNumber = "";
  String unionName = "";
  String unionID = "";
  String stationID = "";

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


              Gap(
                height *0.15
              ),

              CustomInput(hintText: "Enter Vehicle Model here", label: "Vehicle Model", onChanged: (String value) {
                vehicleMode = value;
              },),
              CustomInput(hintText: "Enter Registration Number", label: "Registration Number", onChanged: (String value) {
                registrationNumber = value;
              },),
              CustomInput(hintText: "Enter Union Name here", label: "Union Name", onChanged: (String value) {
                unionName = value;
              },),


              CustomInput(hintText: "Enter Union ID here", label: "Union ID", onChanged: (String value) {
                unionID = value;
              },),
              CustomInput(hintText: "Enter Station ID here", label: "Station ID", onChanged: (String value) {
                stationID = value;
              },),









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

                      content: "Save",
                      onPressed: () {

                        User user  = Provider.of<UserState>(context, listen: false).user;

                        user.vehicleModel = vehicleMode;
                        user.registrationNumber = registrationNumber;
                        user.unionName = unionName;
                        user.unionId = unionID;
                        user.stationId = stationID;


                        context.read<UserState>().setUser(user: user);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignUpPage4(),
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
