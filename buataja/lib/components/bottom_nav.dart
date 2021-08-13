import 'package:buataja/Screens/home/home2.dart';
import 'package:buataja/Screens/profile/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../constants.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.orange,
          border: Border(
              top: BorderSide(
                  width: 1.0, color: kPrimaryColor.withOpacity(0.1)))),
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          NavItem(
            tap: () {
              Get.to(Home2(), transition: Transition.cupertino);
            },
            icon: 'assets/icons/home.svg',
          ),
          NavItem(
            tap: () {},
            icon: 'assets/icons/buy.svg',
          ),
          NavItem(
            tap: () {},
            icon: 'assets/icons/heart_alt.svg',
          ),
          NavItem(
            tap: () {
              Get.to(profile(), transition: Transition.cupertino);
            },
            icon: 'assets/icons/profile.svg',
          ),
        ],
      ),
    );
  }
}

class NavItem extends StatelessWidget {
  const NavItem({Key key, @required this.tap, @required this.icon})
      : super(key: key);

  final GestureTapCallback tap;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tap,
      child: SvgPicture.asset(icon),
    );
  }
}
