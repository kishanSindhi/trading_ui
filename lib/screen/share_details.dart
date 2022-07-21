import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:trading_ui/constants.dart';
import 'package:trading_ui/models/shares.dart';
import 'package:trading_ui/widgets/graph_with_background.dart';

import '../widgets/chip_button.dart';
import '../widgets/overview_card.dart';
import '../widgets/share_heading.dart';

class ShareDetails extends StatelessWidget {
  const ShareDetails({
    Key? key,
    required this.share,
  }) : super(key: key);
  final Share share;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          'Stock Details',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: kDarkBlueColor,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const FaIcon(
              FontAwesomeIcons.cloudArrowUp,
              color: kDarkBlueColor,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 15,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ShareHeading(share: share),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                ChipButton(title: '1D'),
                ChipButton(title: '1W'),
                ChipButton(
                  title: '1M',
                  backgroundColor: kGreenColor,
                  fontColor: Colors.white,
                ),
                ChipButton(title: '1Y'),
                ChipButton(title: 'ALL'),
              ],
            ),
            GraphWithBackground(
              shadowColor: kLightGreenColor,
              lineColor: kDarkBlueColor,
              height: MediaQuery.of(context).size.height * 0.35,
              width: MediaQuery.of(context).size.width * 0.90,
              showAxis: true,
            ),
            OverviewCard(share: share),
            Row(
              children: const [
                BottomButton(buttonColor: kGreenColor, title: 'Buy'),
                SizedBox(width: 10),
                BottomButton(title: 'Sell'),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class BottomButton extends StatelessWidget {
  const BottomButton({
    Key? key,
    this.buttonColor = kDarkBlueColor,
    required this.title,
  }) : super(key: key);
  final Color buttonColor;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 50,
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(buttonColor),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
            ),
          ),
          onPressed: () {},
          child: Text(
            title,
            style: const TextStyle(fontSize: 17),
          ),
        ),
      ),
    );
  }
}
