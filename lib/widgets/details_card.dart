import 'package:flutter/material.dart';
import 'package:trading_ui/constants.dart';

class DetailsCard extends StatelessWidget {
  const DetailsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: kDarkBlueColor,
      borderRadius: kBorderRadius,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Portfolio value',
              style: TextStyle(
                color: kWhiteColor,
                fontSize: 15,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              '\$15,100.30',
              style: TextStyle(
                color: kWhiteColor,
                fontSize: 35,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                SizedBox(
                  width: 100,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(kGreenColor),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text('Deposit'),
                  ),
                ),
                const SizedBox(width: 5),
                SizedBox(
                  width: 100,
                  child: OutlinedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Withdraw',
                      style: TextStyle(
                        color: kWhiteColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
