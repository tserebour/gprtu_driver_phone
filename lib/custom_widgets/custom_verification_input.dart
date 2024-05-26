import 'package:flutter/material.dart';

class CustomVerificationInput extends StatefulWidget {
  const CustomVerificationInput({super.key});

  @override
  State<CustomVerificationInput> createState() => _CustomVerificationInputState();
}

class _CustomVerificationInputState extends State<CustomVerificationInput> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextFormField(


          decoration: InputDecoration(

            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                style: BorderStyle.solid,
                color: Theme.of(context).primaryColor,
              ),


            ),
          ),

        ),
      ),
    );
  }
}
