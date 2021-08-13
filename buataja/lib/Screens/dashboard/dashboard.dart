import 'package:flutter/material.dart';
import 'package:buataja/components/bottom_nav.dart';
import 'package:buataja/constants.dart';
import 'package:buataja/Screens/home/components/categories.dart';
import 'package:buataja/Screens/home/components/products.dart';
import 'package:buataja/Screens/home/components/search_bar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(kDefaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'FORYU',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w900
                  ),
                ),

                Text(
                  'Belanja furniture ga ribet.',
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w500
                  ),
                ),

                SizedBox(height: kDefaultPadding * 0.8),

                SearchBar(),

                Categories(),

                Products(),

                Categories(),
                
                Products()
              ],
            ),
          ),
        ),
      ),
    );
  }
}