import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:trading_ui/constants.dart';
import 'package:trading_ui/models/shares.dart';

class OverviewCard extends StatelessWidget {
  const OverviewCard({Key? key, required this.share}) : super(key: key);
  final Share share;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: kBorderRadius,
        border: Border.all(color: kLightGreyColor!),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  FaIcon(
                    share.icon,
                    size: 15,
                    color: kDarkBlueColor,
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    'Overview',
                    style: kTitleOne,
                  )
                ],
              ),
              const Icon(
                FontAwesomeIcons.circleQuestion,
                color: Colors.grey,
                size: 15,
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Open',
                    style: kLabelTextTwo,
                  ),
                  const SizedBox(height: 5),
                  Text(
                    '\$${share.sharePrice}',
                    style: kTitleTwo,
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Day Low',
                    style: kLabelTextTwo,
                  ),
                  const SizedBox(height: 5),
                  Text(
                    '\$${int.parse(share.sharePrice) - 10}',
                    style: kTitleTwo,
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Text(
                    'Day High',
                    style: kLabelTextTwo,
                  ),
                  const SizedBox(height: 5),
                  Text(
                    '\$${int.parse(share.sharePrice) - 10}',
                    style: kTitleTwo,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
