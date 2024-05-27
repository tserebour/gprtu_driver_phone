import 'package:flutter/material.dart';

class CustomUnfilledButton extends StatefulWidget {
  final VoidCallback onPressed;
  final String content;
  final double width;
  const CustomUnfilledButton({super.key, required this.onPressed, required this.content, this.width = double.infinity});

  @override
  State<CustomUnfilledButton> createState() => _CustomUnfilledButtonState();
}

class _CustomUnfilledButtonState extends State<CustomUnfilledButton> {
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
            elevation: 2,
            // foregroundColor: Colors.white, backgroundColor: Theme.of(context).primaryColor,
            shape: RoundedRectangleBorder(
              side: BorderSide(color: Theme.of(context).primaryColor),
              borderRadius: BorderRadius.circular(10),

            ),
          ),
          onPressed: widget.onPressed,
          child: Text(
            widget.content,
            style: TextStyle(color: Theme.of(context).primaryColor),
          ),
        ),
      )
    ;
  }
}
