import 'package:flutter/material.dart';

import 'graph.dart';

class GraphWithBackground extends StatelessWidget {
  const GraphWithBackground({
    Key? key,
    required this.shadowColor,
    required this.lineColor,
    required this.height,
    required this.width,
    required this.showAxis,
  }) : super(key: key);

  final Color shadowColor;
  final Color lineColor;
  final double height;
  final double width;
  final bool showAxis;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            blurRadius: 50,
            color: shadowColor,
          )
        ],
      ),
      child: MyGraph(
        lineColor: lineColor,
        strokeWidth: 3,
        showAxis: showAxis,
      ),
    );
  }
}
