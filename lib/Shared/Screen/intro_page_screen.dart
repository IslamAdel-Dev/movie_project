import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:movie_project/Catagory/browse_tab.dart';
import 'package:movie_project/Search/search_tab.dart';
import 'package:movie_project/Shared/Screen/home_tab.dart';
import 'package:movie_project/Shared/Widget/app_theme.dart';
import 'package:movie_project/WatchList/watchlist_tab.dart';

class IntroPageScreen extends StatefulWidget {
  const IntroPageScreen({super.key});
  static const String routeName = '/intro';

  @override
  State<IntroPageScreen> createState() => _IntroPageScreenState();
}

class _IntroPageScreenState extends State<IntroPageScreen> {
  List<Widget> tabs = [
    HomeTab(),
    const SearchTab(),
    const BrowserTab(),
    const WatchlistTab(),
  ];
  int currentTabIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[currentTabIndex],
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.all(
          Radius.circular(
            10,
          ),
        ),
        child: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          notchMargin: 10,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          padding: EdgeInsets.zero,
          color: AppTheme.white,
          child: BottomNavigationBar(
            currentIndex: currentTabIndex,
            onTap: (index) => setState(
              () {
                currentTabIndex = index;
              },
            ),
            elevation: 0,
            items: [
              BottomNavigationBarItem(
                label: 'home'.toUpperCase(),
                icon: const Icon(
                  FontAwesomeIcons.houseChimney,
                ),
              ),
              BottomNavigationBarItem(
                label: 'search'.toUpperCase(),
                icon: const Icon(
                  FontAwesomeIcons.magnifyingGlass,
                ),
              ),
              BottomNavigationBarItem(
                label: 'browser'.toUpperCase(),
                icon: const Icon(
                  FontAwesomeIcons.clapperboard,
                ),
              ),
              BottomNavigationBarItem(
                label: 'watchlist'.toUpperCase(),
                icon: const Icon(
                  FontAwesomeIcons.bookmark,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}