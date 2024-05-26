import 'package:flutter/material.dart';

class Trapezoid extends StatelessWidget {
  final double topWidth;
  final double bottomWidth;
  final double height;
  final Widget? child;

  const Trapezoid({
    super.key,
    required this.topWidth,
    required this.bottomWidth,
    required this.height,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: TrapezoidClipper(
        topWidth: topWidth,
        bottomWidth: bottomWidth,
        height: height,
      ),
      child: Container(
        color: Theme.of(context).primaryColor,
        child: child,
        // You can add additional decorations or child widgets here
      ),
    );
  }
}

class TrapezoidClipper extends CustomClipper<Path> {
  final double topWidth;
  final double bottomWidth;
  final double height;

  const TrapezoidClipper({
    required this.topWidth,
    required this.bottomWidth,
    required this.height,
  });

  @override
  Path getClip(Size size) {
    final path = Path();
    const double slantHeight = 100.0; // Adjust the slant height as needed

    path.moveTo(0.0, size.height); // Start at the bottom left corner
    path.lineTo(0.0, slantHeight); // Draw a slanted line to the left top slanted point
    path.lineTo(size.width, 0.0); // Draw a line to the top right corner
    path.lineTo(size.width, size.height); // Draw a line to the bottom right corner
    path.close(); // Close the path

    return path;
  }

  @override
  bool shouldReclip(TrapezoidClipper oldClipper) =>
      oldClipper.topWidth != topWidth ||
          oldClipper.bottomWidth != bottomWidth ||
          oldClipper.height != height;
}
