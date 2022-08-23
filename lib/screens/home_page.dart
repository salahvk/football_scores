import 'package:flutter/material.dart';
import 'package:football_scores/components/color_manager.dart';
import 'package:football_scores/screens/TodaySchedule.dart';
import 'package:football_scores/screens/matches.dart';
import 'package:football_scores/screens/players.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  final List<Widget> _screens = [
    const TodaySchedulePage(),
    const Matches(),
    const Players()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 30),
        child: GNav(
          rippleColor: Colors.grey[300]!,
          hoverColor: Colors.grey[100]!,
          tabMargin: const EdgeInsets.symmetric(vertical: 2, horizontal: 0),
          gap: 8,
          activeColor: Colors.black,
          iconSize: 24,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
          duration: const Duration(milliseconds: 400),
          tabBackgroundColor: Colors.grey[100]!,
          color: ColorManager.whiteText,
          tabs: const [
            GButton(
              icon: Icons.home,
              text: 'Today',
            ),
            GButton(
              icon: Icons.search,
              text: 'Search',
            ),
            GButton(
              icon: Icons.music_note_sharp,
              text: 'Music',
            ),
          ],
          selectedIndex: _selectedIndex,
          onTabChange: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
        ),
      ),
      body: _screens[_selectedIndex],
    );
  }
}
