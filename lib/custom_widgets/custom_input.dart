import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CustomInput extends StatefulWidget {
  bool obscureText;
  final bool obscurableText;
  final String hintText;
  final String label;
  CustomInput({super.key, this.obscureText = false, required this.hintText, required this.label, this.obscurableText = false});

  @override
  State<CustomInput> createState() => _CustomInputState();
}

class _CustomInputState extends State<CustomInput> {
  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.only(bottom: height*0.005),
      child: SizedBox(
        height: height * 0.1,
        width: double.infinity,


        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.label,
              style: TextStyle(
                fontSize: width * 0.02*2,
                fontWeight: FontWeight.bold,
              ),
            ),

            Gap(
              height * 0.01,
            ),

            Expanded(
              child: TextFormField(





                obscureText: widget.obscureText,
                decoration: InputDecoration(

                  //put an icon inside the right corner of the textfield
                  suffix: widget.obscurableText
                        ?
                    InkWell(
                      onTap: (){
                        setState(() {
                          widget.obscureText = !widget.obscureText;
                        });
                      },
                      child: Icon(
                        widget.obscureText? Icons.visibility : Icons.visibility_off,
                        color: Theme.of(context).primaryColor,
                      ),
                    ): const Icon(
                      null
                    ),
                  hintText: widget.hintText,
                  hintStyle: TextStyle(
                    fontSize: width * 0.03,
                    color: Colors.grey
                  ),
                  //blue borders
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

          ],
        ),
      ),
    );
  }
}
