import 'package:flutter/material.dart';
import 'package:trading_ui/constants.dart';

class ChipButton extends StatelessWidget {
  const ChipButton({
    Key? key,
    required this.title,
    this.backgroundColor = Colors.white,
    this.fontColor = kDarkBlueColor,
  }) : super(key: key);
  final String title;
  final Color backgroundColor;
  final Color fontColor;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(backgroundColor),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      ),
      onPressed: () {},
      child: Text(
        title,
        style: TextStyle(
          color: fontColor,
        ),
      ),
    );
  }
}
