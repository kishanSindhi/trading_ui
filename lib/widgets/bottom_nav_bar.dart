import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:trading_ui/screen/home_screen.dart';
import 'package:trading_ui/screen/market_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key, required this.currentIndex}) : super(key: key);
  final int currentIndex;
  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      type: BottomNavigationBarType.fixed,
      currentIndex: widget.currentIndex,
      items: [
        BottomNavigationBarItem(
          icon: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const HomeScreen(),
                ),
              );
            },
            icon: const FaIcon(
              FontAwesomeIcons.house,
            ),
          ),
          label: 'Home',
        ),
        const BottomNavigationBarItem(
          icon: Padding(
            padding: EdgeInsets.only(right: 40),
            child: FaIcon(FontAwesomeIcons.chartPie),
          ),
          label: 'Status',
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: const EdgeInsets.only(left: 40),
            child: IconButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => const MarketScreen(),
                  ),
                );
              },
              icon: const FaIcon(FontAwesomeIcons.sliders),
            ),
          ),
          label: 'Market',
        ),
        const BottomNavigationBarItem(
          icon: FaIcon(FontAwesomeIcons.user),
          label: 'Profile',
        ),
      ],
    );
  }
}
