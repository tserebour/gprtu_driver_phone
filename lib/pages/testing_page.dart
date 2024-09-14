import 'package:flutter/material.dart';

class TestingPage extends StatefulWidget {
  final String driver;
  final double latitude;
  final double longitude;
  const TestingPage({super.key, required this.driver, required this.latitude, required this.longitude});

  @override
  State<TestingPage> createState() => _TestingPageState();
}

class _TestingPageState extends State<TestingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text(
              "Alert from ${widget.driver}"
            ),
            Text(
              'Current Location: ${widget.latitude.toStringAsFixed(4)}, ${widget.longitude.toStringAsFixed(4)}',
            ),

          ],
        ),
      ),
    );
  }
}
