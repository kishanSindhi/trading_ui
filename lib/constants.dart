import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'models/shares.dart';

import 'widgets/market_card.dart';
import 'widgets/watch_list.dart';

const Color kDarkBlueColor = Color(0xff03314B);

const Color kWhiteColor = Colors.white;

const Color kGreenColor = Color(0xff4FCD97);

const Color kLightGreenColor = Color.fromARGB(255, 141, 221, 186);

Color? kLightGreyColor = Colors.grey[100];

BorderRadius kBorderRadius = BorderRadius.circular(30);

const TextStyle kHeadingOne = TextStyle(
  color: kDarkBlueColor,
  fontWeight: FontWeight.bold,
  fontSize: 30,
);

const TextStyle kHeadingTwo = TextStyle(
  color: kDarkBlueColor,
  fontWeight: FontWeight.bold,
  fontSize: 20,
);

const TextStyle kTitleOne = TextStyle(
  color: kDarkBlueColor,
  fontWeight: FontWeight.bold,
  fontSize: 15,
);

const TextStyle kTitleTwo = TextStyle(
  color: kDarkBlueColor,
  fontWeight: FontWeight.bold,
  fontSize: 18,
);

const TextStyle kLabelTextOne = TextStyle(
  color: Colors.grey,
  fontSize: 10,
);

const TextStyle kLabelTextTwo = TextStyle(
  color: Colors.grey,
  fontSize: 15,
);

const TextStyle kPercentUp = TextStyle(
  color: Colors.green,
  fontSize: 20,
  fontWeight: FontWeight.bold,
);

const TextStyle kPercentDown = TextStyle(
  color: Colors.red,
  fontSize: 20,
  fontWeight: FontWeight.bold,
);

const TextStyle kHeadingThree = TextStyle(
  color: kGreenColor,
  fontWeight: FontWeight.bold,
  fontSize: 15,
);

final List<Share> shareList = [
  Share(
    isIncreased: true,
    icon: FontAwesomeIcons.twitter,
    shareName: 'TWTR',
    shareFullName: 'Twitter',
    amountChanged: '90',
    percentChanged: '10',
    sharePrice: '900',
    totalNumberOfShare: '10',
  ),
  Share(
    isIncreased: false,
    icon: FontAwesomeIcons.twitch,
    shareName: 'TWCH',
    shareFullName: 'Twitch',
    amountChanged: '80',
    percentChanged: '20',
    sharePrice: '400',
    totalNumberOfShare: '19',
  ),
  Share(
    isIncreased: true,
    icon: FontAwesomeIcons.facebook,
    shareName: 'FCBK',
    shareFullName: 'Facebook',
    amountChanged: '100',
    percentChanged: '10',
    sharePrice: '1100',
    totalNumberOfShare: '20',
  ),
  Share(
    isIncreased: false,
    icon: FontAwesomeIcons.amazon,
    shareName: 'AMZ',
    shareFullName: 'Amazon',
    amountChanged: '12',
    percentChanged: '1',
    sharePrice: '1200',
    totalNumberOfShare: '120',
  ),
];

const List<WatchList> watchList = [
  WatchList(
    icon: FontAwesomeIcons.apple,
    isIncreased: true,
    percentChange: '10',
    rateChange: '20.38',
    rateOfStock: '200',
    stockFullName: 'Apple Inc',
    stockName: 'Appl',
  ),
  WatchList(
    icon: FontAwesomeIcons.paypal,
    isIncreased: false,
    percentChange: '20',
    rateChange: '28.17',
    rateOfStock: '140',
    stockFullName: 'Paypal Inc',
    stockName: 'PPL',
  ),
  WatchList(
    icon: FontAwesomeIcons.google,
    isIncreased: true,
    percentChange: '12',
    rateChange: '18.18',
    rateOfStock: '1800',
    stockFullName: 'Google Inc',
    stockName: 'GGL',
  )
];

const List<MarketCard> marketCardList = [
  MarketCard(
    amount: '26,790.98',
    backgroundColor: Colors.white,
    isIncreased: true,
    lineColor: kDarkBlueColor,
    percentChange: '0.17',
    shadowColor: kLightGreenColor,
    title: 'Dow Jones',
    fontColor: kDarkBlueColor,
  ),
  MarketCard(
    amount: '82,280',
    backgroundColor: kDarkBlueColor,
    borderColor: kDarkBlueColor,
    isIncreased: false,
    lineColor: Colors.white,
    percentChange: '17.29',
    shadowColor: Colors.transparent,
    title: 'Tata Motors',
    fontColor: Colors.white,
  ),
  MarketCard(
    amount: '37,282.98',
    backgroundColor: Colors.white,
    isIncreased: true,
    lineColor: kDarkBlueColor,
    percentChange: '10.2',
    shadowColor: kLightGreenColor,
    title: 'Reliance Jio',
    fontColor: kDarkBlueColor,
  ),
];
