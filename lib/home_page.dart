//@dart=2.9

import 'package:devolopment/screens/initial_pages/01_home_category_pgae.dart';
import 'package:devolopment/screens/initial_pages/02_recipe_page.dart';
import 'package:devolopment/screens/initial_pages/03_foodsnap_page.dart';
import 'package:devolopment/screens/initial_pages/04_search_page.dart';
import 'package:devolopment/screens/initial_pages/05_settings_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  final screens = [
    HomeCategoryPage(),
    RecipePage(),
    FoodSnapPage(),
    SearchPage(),
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: false,
        unselectedItemColor: Colors.grey[700],
        onTap: (index) => setState(() => currentIndex = index),
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        elevation: 8,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.restaurant,
              ),
              label: 'Recipes'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.camera_alt_outlined,
              ),
              label: 'FoodSnap'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
              ),
              label: 'Explore'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
              ),
              label: 'Settings'),
        ],
      ),
    );
  }
}
