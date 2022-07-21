import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:trading_ui/constants.dart';
import 'package:trading_ui/widgets/bottom_nav_bar.dart';
import 'package:trading_ui/widgets/vertical_button_card.dart';

import '../widgets/details_card.dart';
import '../widgets/list_card.dart';
import 'share_details.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          'Kishan Sindhi',
          style: TextStyle(
            color: kDarkBlueColor,
            fontWeight: FontWeight.w700,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const FaIcon(
              FontAwesomeIcons.magnifyingGlass,
              color: kDarkBlueColor,
            ),
          ),
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
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: const [
                DetailsCard(),
                ButtonCard(),
              ],
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Watchlist',
                  style: kHeadingTwo,
                ),
                Text(
                  'See all',
                  style: kHeadingThree,
                ),
              ],
            ),
            Expanded(
              flex: 8,
              child: ListView.builder(
                itemBuilder: (_, index) => watchList[index],
                scrollDirection: Axis.horizontal,
                itemCount: watchList.length,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Stocks Activity',
              textAlign: TextAlign.start,
              style: kHeadingTwo,
            ),
            const SizedBox(height: 10),
            Expanded(
              flex: 5,
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
      bottomNavigationBar: const BottomNavBar(currentIndex: 0),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: kGreenColor,
        child: const FaIcon(FontAwesomeIcons.arrowRightArrowLeft),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
