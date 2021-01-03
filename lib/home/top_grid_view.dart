import 'package:flutter/material.dart';

class TopGridView extends StatelessWidget {
  static const int CROSS_AXIS_COUNT = 4;

  final List<Widget> children;

  TopGridView({this.children});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
      crossAxisCount: CROSS_AXIS_COUNT,
      children: children,
    );
  }
}
