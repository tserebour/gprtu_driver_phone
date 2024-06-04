import 'package:flutter/material.dart';

class CustomScaffold extends StatefulWidget {
  final Widget body;
  final bottomNavigationBar;
  final appBar;
  const CustomScaffold({super.key, required this.body, this.bottomNavigationBar, this.appBar});

  @override
  State<CustomScaffold> createState() => _CustomScaffoldState();
}

class _CustomScaffoldState extends State<CustomScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: widget.appBar,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/gprtu_login_background.png'),
            fit: BoxFit.cover,
          ),


        ),
          child: widget.body
      ),
      bottomNavigationBar: widget.bottomNavigationBar,
    );
  }
}
