import 'package:buataja/components/bottom_nav.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import 'components/categories.dart';
import 'components/maindrawer.dart';
import 'components/products.dart';
import 'components/products2.dart';
import 'components/search_bar.dart';

class Home2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Foryu"),
      ),
      drawer: MainDrawer(),
      bottomNavigationBar: BottomNavBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(kDefaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SearchBar(),
                Categories(),
                Products(),
                SizedBox(height: kDefaultPadding * 0.8),
                Products2(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
