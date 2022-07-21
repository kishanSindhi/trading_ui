import 'package:flutter/material.dart';
import 'package:trading_ui/constants.dart';

import 'screen/home_screen.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
        ),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: kDarkBlueColor,
        ),
      ),
      home: const HomeScreen(),
    ),
  );
}
