import 'package:flutter/material.dart';

class CustomTheme {
  static ThemeData getAppTheme() {
    return ThemeData(
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.white, // Customize AppBar background color
        titleTextStyle: TextStyle(
          color: Colors.black, // Customize AppBar title color
          fontSize: 20.0, // Customize AppBar title size
          fontWeight: FontWeight.normal,
        ),
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedItemColor: Colors.black, // Customize the selected text color
        unselectedItemColor:
            Colors.black45, // Customize the unselected text color
        selectedIconTheme:
            IconThemeData(color: Colors.black), // Customize selected icon color
        unselectedIconTheme: IconThemeData(
            color: Colors.black45), // Customize unselected icon color
        selectedLabelStyle: TextStyle(
          color: Colors.black, // Customize selected label text color
        ),
        unselectedLabelStyle: TextStyle(
          color: Colors.black45, // Customize unselected label text color
        ),
      ),
    );
  }
}
