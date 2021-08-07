import 'package:flutter/material.dart';

import 'stick.dart';

class SegmentNumber extends StatelessWidget {
  const SegmentNumber({
    Key? key,
    required this.number,
  }) : super(key: key);

  final int number;

  List<bool> getConfiguration() {
    if (number == 1) {
      final configuration = List.filled(7, false);
      configuration[2] = true;
      configuration[5] = true;
      return configuration;
    }
    if (number == 2) {
      final configuration = List.filled(7, true);
      configuration[1] = false;
      configuration[5] = false;
      return configuration;
    }
    if (number == 3) {
      final configuration = List.filled(7, true);
      configuration[1] = false;
      configuration[4] = false;
      return configuration;
    }
    if (number == 4) {
      final configuration = List.filled(7, true);
      configuration[0] = false;
      configuration[4] = false;
      configuration[6] = false;
      return configuration;
    }
    if (number == 5) {
      final configuration = List.filled(7, true);
      configuration[2] = false;
      configuration[4] = false;
      return configuration;
    }
    if (number == 6) {
      final configuration = List.filled(7, true);
      configuration[2] = false;
      return configuration;
    }
    if (number == 7) {
      final configuration = List.filled(7, false);
      configuration[0] = true;
      configuration[2] = true;
      configuration[5] = true;
      return configuration;
    }
    if (number == 8) {
      return List.filled(7, true);
    }
    if (number == 9) {
      final configuration = List.filled(7, true);
      configuration[4] = false;
      return configuration;
    }
    throw AssertionError('Não deve chegar aqui');
  }

  @override
  Widget build(BuildContext context) {
    final config = getConfiguration();
    return GridView.count(
      crossAxisCount: 3,
      children: [
        const SizedBox(),
        if (config[0])
          Align(alignment: Alignment.bottomCenter, child: Stick())
        else
          const SizedBox(),
        const SizedBox(),
        if (config[1])
          Align(
            alignment: Alignment.centerRight,
            child: RotatedBox(quarterTurns: 1, child: Stick()),
          )
        else
          const SizedBox(),
        const SizedBox(),
        if (config[2])
          Align(
            alignment: Alignment.centerLeft,
            child: RotatedBox(quarterTurns: 1, child: Stick()),
          )
        else
          const SizedBox(),
        if (config[4])
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: RotatedBox(quarterTurns: 1, child: Stick()),
            ),
          )
        else
          const SizedBox(),
        if (config[3])
          Align(alignment: Alignment.topCenter, child: Stick())
        else
          const SizedBox(),
        if (config[5])
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: RotatedBox(quarterTurns: 1, child: Stick()),
            ),
          )
        else
          const SizedBox(),
        const SizedBox(),
        if (config[6])
          Align(alignment: Alignment.topCenter, child: Stick())
        else
          const SizedBox(),
      ],
    );
  }
}
