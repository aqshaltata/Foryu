import 'package:buataja/Screens/home/components/maindrawer.dart';
import 'package:buataja/components/bottom_nav.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Theme.of(context).primaryColor,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("About Foryu"),
        ),
        bottomNavigationBar: BottomNavBar(),
        drawer: MainDrawer(),
        body: Container(
          child: ListView(
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 150.0),
                    margin: EdgeInsets.only(bottom: 20),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          border: Border.all(color: Colors.orange),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                        child: Text(
                          'FORYU',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w900,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                child: Text(
                  'Belanja Furniture ga ribet.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.black54,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
                child: Text(
                  'Foryu adalah sebuah aplikasi jual beli produk furnitur yang didesain khusus untuk para pelaku bisnis di bidang furnitur yang ingin melebarkan sayap usahanya ke dunia maya.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Copyright',
                      style: TextStyle(
                        fontSize: 17.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 20.0),
                child: Text(
                  'Mochamad Aqshal Tata Taufiq - 190030096\n'
                  'I Wayan Asta Wira Di Yusiwa - 190030078\n'
                  'I Gede Roni Anggara - 190030243\n'
                  'I Putu Sudana - 190030302\n'
                  'I Made Wisnu Wardana - 190030671\n'
                  'Agung Ari Prasetya - 190030305\n',
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
