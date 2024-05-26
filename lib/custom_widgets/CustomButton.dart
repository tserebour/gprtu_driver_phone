import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {

  //callback called onpressed
  final VoidCallback onPressed;
  final String content;
  final double width;
  const CustomButton({super.key, required this.onPressed, required this.content, this.width = double.infinity});

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return
      //elevated button with black background
      SizedBox(
        width: widget.width,
        height: height*0.06,
        child: ElevatedButton(

          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white, backgroundColor: Theme.of(context).primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          onPressed: widget.onPressed,
          child: Text(
            widget.content,
            style: const TextStyle(color: Colors.white),
          ),
        ),
      )
    ;
  }
}
