import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:trading_ui/screen/share_details.dart';

import '../constants.dart';
import '../widgets/bottom_nav_bar.dart';
import '../widgets/list_card.dart';

class MarketScreen extends StatelessWidget {
  const MarketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Markets',
          style: TextStyle(
            color: kDarkBlueColor,
            fontWeight: FontWeight.w700,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const FaIcon(
              FontAwesomeIcons.bell,
              color: kDarkBlueColor,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: marketCardList.length,
                itemBuilder: (context, index) {
                  return marketCardList[index];
                },
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                prefixIcon: const Padding(
                  padding: EdgeInsets.only(left: 20, top: 10),
                  child: FaIcon(
                    FontAwesomeIcons.magnifyingGlass,
                    color: kDarkBlueColor,
                  ),
                ),
                suffix: const FaIcon(FontAwesomeIcons.sliders),
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Market Movers',
              style: kHeadingTwo,
              textAlign: TextAlign.start,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: shareList.length,
                itemBuilder: (_, index) {
                  final currentShare = shareList[index];
                  return ListCard(
                    icon: currentShare.icon,
                    isIncreased: currentShare.isIncreased,
                    percentChange: currentShare.percentChanged,
                    priceOfShare: currentShare.sharePrice,
                    rateChange: currentShare.amountChanged,
                    shareFullName: currentShare.shareFullName,
                    shareName: currentShare.shareName,
                    totalNumberOfShare: currentShare.totalNumberOfShare,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => ShareDetails(share: currentShare),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavBar(currentIndex: 2),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: kGreenColor,
        child: const FaIcon(FontAwesomeIcons.arrowRightArrowLeft),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
