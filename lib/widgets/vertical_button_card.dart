import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:trading_ui/constants.dart';

import 'custon_icon_button.dart';

class ButtonCard extends StatelessWidget {
  const ButtonCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: -20,
      right: 20,
      child: Material(
        borderRadius: kBorderRadius,
        elevation: 10,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              CustomIconButton(
                icon: FontAwesomeIcons.apple,
                onTap: () {},
              ),
              const SizedBox(height: 5),
              CustomIconButton(
                icon: FontAwesomeIcons.paypal,
                onTap: () {},
              ),
              const SizedBox(height: 5),
              CustomIconButton(
                icon: FontAwesomeIcons.googlePay,
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
