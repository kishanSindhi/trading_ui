import 'package:flutter/widgets.dart';

class Share {
  final IconData icon;
  final String shareName;
  final String shareFullName;
  final String amountChanged;
  final String percentChanged;
  final String sharePrice;
  final String totalNumberOfShare;
  final bool isIncreased;

  Share({
    required this.isIncreased,
    required this.icon,
    required this.shareName,
    required this.shareFullName,
    required this.amountChanged,
    required this.percentChanged,
    required this.sharePrice,
    required this.totalNumberOfShare,
  });
}
