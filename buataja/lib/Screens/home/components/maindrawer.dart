import 'package:buataja/Screens/about/about.dart';
import 'package:buataja/Screens/home/home2.dart';
import 'package:buataja/Screens/list/list.dart';
import 'package:buataja/Screens/login/login.dart';
import 'package:buataja/Screens/profile/profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            color: Theme.of(context).primaryColor,
            child: Center(
              child: Column(
                children: <Widget>[
                  InkWell(
                    child: Container(
                      width: 100,
                      height: 100,
                      margin: EdgeInsets.only(top: 20, bottom: 20),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: NetworkImage(
                            'https://yt3.ggpht.com/yti/APfAmoFYaALkx11ktb3V2DAbh2wJ2OT5Qg7NuNUBPpn0',
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    onTap: () {
                      Get.to(profile(), transition: Transition.cupertino);
                    },
                  ),
                  InkWell(
                    child: Text(
                      'Aqshal Tata',
                      style: TextStyle(fontSize: 22),
                    ),
                    onTap: () {
                      Get.to(profile(), transition: Transition.cupertino);
                    },
                  )
                ],
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Home"),
            onTap: () {
              Get.to(Home2(), transition: Transition.cupertino);
            },
          ),
          ListTile(
            leading: Icon(Icons.people),
            title: Text("About"),
            onTap: () {
              Get.to(About(), transition: Transition.cupertino);
            },
          ),
          ListTile(
            leading: Icon(Icons.article_sharp),
            title: Text("Kategori Furnitur"),
            onTap: () {
              Get.to(listBarang(), transition: Transition.cupertino);
            },
          ),
          ListTile(
            leading: Icon(Icons.arrow_left_sharp),
            title: Text("Logout"),
            onTap: () {
              Get.off(LoginScreen(), transition: Transition.cupertino);
            },
          ),
        ],
      ),
    );
  }
}
