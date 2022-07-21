import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:trading_ui/constants.dart';
import 'package:trading_ui/widgets/graph.dart';

class WatchList extends StatelessWidget {
  const WatchList({
    Key? key,
    required this.icon,
    required this.stockName,
    required this.stockFullName,
    required this.percentChange,
    required this.rateChange,
    required this.rateOfStock,
    required this.isIncreased,
  }) : super(key: key);
  final IconData icon;
  final String stockName;
  final String stockFullName;
  final String percentChange;
  final String rateChange;
  final String rateOfStock;
  final bool isIncreased;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(20),
      width: MediaQuery.of(context).size.width * 0.70,
      decoration: BoxDecoration(
        borderRadius: kBorderRadius,
        border: Border.all(
          color: Colors.grey,
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: kLightGreyColor,
                    maxRadius: 20,
                    child: FaIcon(
                      icon,
                      color: kDarkBlueColor,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        stockName,
                        style: kTitleOne,
                      ),
                      const SizedBox(height: 5),
                      Text(
                        stockFullName,
                        style: kLabelTextOne,
                      ),
                    ],
                  ),
                ],
              ),
              Text(
                isIncreased ? '⬆$percentChange%' : '↓$percentChange%',
                style: isIncreased ? kPercentUp : kPercentDown,
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    rateChange,
                    style: kHeadingOne,
                  ),
                  const SizedBox(height: 5),
                  Text(
                    '\$$rateOfStock',
                    style: kLabelTextTwo,
                  ),
                ],
              ),
              const SizedBox(width: 10),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.30,
                height: 60,
                child: const MyGraph(
                  lineColor: kDarkBlueColor,
                  strokeWidth: 2,
                  showAxis: false,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
