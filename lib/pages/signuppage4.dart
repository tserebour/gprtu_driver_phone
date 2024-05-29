import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../custom_widgets/CustomButton.dart';
import '../custom_widgets/custom_input.dart';
import '../custom_widgets/custom_scaffold.dart';
import '../custom_widgets/custom_unfilled_button.dart';
import '../models/user.dart';
import '../providers/UserState.dart';
import 'LoginPage.dart';
import 'package:provider/provider.dart';

class SignUpPage4 extends StatefulWidget {
  const SignUpPage4({super.key});

  @override
  State<SignUpPage4> createState() => _SignUpPage4State();
}

class _SignUpPage4State extends State<SignUpPage4> {

  String bankName = "";
  String account = "";
  String accountNumber = "";
  String pin = "";
  String confirmPin = "";

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


              Container(


                height: height*0.15,
                width: double.infinity,
                color: Theme.of(context).primaryColor,

              ),

              CustomInput(hintText: "Enter Bank Name here", label: "Bank", onChanged: (String value) {
                bankName = value;
              },),
              CustomInput(hintText: "Enter Account", label: "Account ", onChanged: (String value) {
                account = value;
              },),
              CustomInput(hintText: "Enter Account Number", label: "Account Number", onChanged: (String value) {
                accountNumber = value;
              },),
              CustomInput(hintText: "Enter Pin here", label: "Pin", onChanged: (String value) {
                pin = value;
              },),
              CustomInput(hintText: "Enter Confirmation Pin here", label: "Confirm Pin", onChanged: (String value) {
                confirmPin = value;
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
                      onPressed: () async{

                        User user  = Provider.of<UserState>(context, listen: false).user;



                        user.bankName = bankName;
                        user.accountName = account;
                        user.accountNumber = accountNumber;
                        user.pin = pin;


                        context.read<UserState>().setUser(user: user);

                        await user.signUp();


                        if(context.mounted){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LoginPage(),
                            ),
                          );
                        }
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
