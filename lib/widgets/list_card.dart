import 'package:flutter/material.dart';
import 'package:trading_ui/constants.dart';

class ListCard extends StatelessWidget {
  const ListCard({
    Key? key,
    required this.icon,
    required this.shareName,
    required this.shareFullName,
    required this.percentChange,
    required this.rateChange,
    required this.priceOfShare,
    required this.totalNumberOfShare,
    required this.isIncreased,
    required this.onTap,
  }) : super(key: key);
  final IconData icon;
  final String shareName;
  final String shareFullName;
  final String percentChange;
  final String rateChange;
  final String priceOfShare;
  final String totalNumberOfShare;
  final bool isIncreased;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: Colors.grey,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: kLightGreyColor,
                      child: Icon(
                        icon,
                        color: kDarkBlueColor,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          shareName,
                          style: kTitleOne,
                        ),
                        const SizedBox(height: 5),
                        Text(
                          shareFullName,
                          style: kLabelTextTwo,
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      rateChange,
                      style: kTitleOne.copyWith(
                        color: isIncreased ? Colors.green : Colors.red,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      isIncreased ? '⬆$percentChange%' : '↓$percentChange%',
                      style: kLabelTextTwo.copyWith(
                        color: isIncreased ? Colors.green : Colors.red,
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '\$$priceOfShare',
                      style: kTitleOne,
                    ),
                    const SizedBox(height: 5),
                    Text(
                      '$totalNumberOfShare Shares',
                      style: kLabelTextTwo,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
