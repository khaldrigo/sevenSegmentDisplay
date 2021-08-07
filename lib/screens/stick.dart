import 'package:flutter/material.dart';

import 'display_logic.dart';

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
