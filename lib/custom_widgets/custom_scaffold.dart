import 'package:flutter/material.dart';

class CustomScaffold extends StatefulWidget {
  final Widget body;
  const CustomScaffold({super.key, required this.body});

  @override
  State<CustomScaffold> createState() => _CustomScaffoldState();
}

class _CustomScaffoldState extends State<CustomScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/gprtu_login_background.png'),
            fit: BoxFit.cover,
          ),


        ),
          child: widget.body
      ),
    );
  }
}
