import 'package:flutter/material.dart';
import 'package:seven_segments_display/screens/segment_number.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class Clipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final off = 8.0;
    return Path()
      ..moveTo(off, 0)
      ..lineTo(size.width - off, 0)
      ..lineTo(size.width, size.height / 2)
      ..lineTo(size.width - off, size.height)
      ..lineTo(off, size.height)
      ..lineTo(0, size.height / 2);
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SegmentNumber(
        number: 1,
      ),
    );
  }
}

class Stick extends StatelessWidget {
  const Stick({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 10,
      child: ClipPath(
        clipper: Clipper(),
        child: Container(height: 10, color: Colors.red),
      ),
    );
  }
}
