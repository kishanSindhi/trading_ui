import 'package:flutter/material.dart';
import 'package:trading_ui/constants.dart';

import 'graph_with_background.dart';

class MarketCard extends StatelessWidget {
  const MarketCard({
    Key? key,
    required this.lineColor,
    required this.backgroundColor,
    required this.shadowColor,
    required this.title,
    required this.amount,
    required this.isIncreased,
    required this.percentChange,
    required this.fontColor,
    this.borderColor = Colors.grey,
  }) : super(key: key);
  final Color lineColor;
  final Color backgroundColor;
  final Color shadowColor;
  final Color fontColor;
  final String title;
  final String amount;
  final bool isIncreased;
  final String percentChange;
  final Color borderColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: const EdgeInsets.all(20),
        width: MediaQuery.of(context).size.width * 0.6,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: kBorderRadius,
          border: Border.all(
            color: borderColor,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: kLabelTextTwo.copyWith(
                color: fontColor,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              '\$$amount',
              style: kHeadingTwo.copyWith(
                fontSize: 25,
                color: fontColor,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              isIncreased ? '⬆ $percentChange' : '↓ $percentChange',
              style: isIncreased
                  ? kPercentUp.copyWith(fontSize: 18)
                  : kPercentDown.copyWith(fontSize: 18),
            ),
            const SizedBox(height: 10),
            GraphWithBackground(
              width: MediaQuery.of(context).size.width * 0.50,
              height: MediaQuery.of(context).size.height * 0.10,
              shadowColor: shadowColor,
              lineColor: lineColor,
              showAxis: false,
            ),
          ],
        ),
      ),
    );
  }
}
