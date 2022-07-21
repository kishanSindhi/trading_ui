import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:trading_ui/models/shares.dart';

import '../constants.dart';

class ShareHeading extends StatelessWidget {
  const ShareHeading({
    Key? key,
    required this.share,
  }) : super(key: key);
  final Share share;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: 25,
              backgroundColor: kLightGreyColor,
              child: FaIcon(
                share.icon,
                color: kDarkBlueColor,
                size: 35,
              ),
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  share.shareName,
                  style: kHeadingTwo,
                ),
                const SizedBox(height: 5),
                Text(
                  share.shareFullName,
                  style: kLabelTextTwo,
                ),
              ],
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              '\$${share.sharePrice}',
              style: kHeadingTwo,
            ),
            const SizedBox(height: 5),
            Text(
              share.isIncreased
                  ? '⬆ ${share.percentChanged}%(+1.28)'
                  : '↓ ${share.percentChanged}%(-1.28)',
              style: kLabelTextTwo.copyWith(
                color: share.isIncreased ? Colors.green : Colors.red,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
