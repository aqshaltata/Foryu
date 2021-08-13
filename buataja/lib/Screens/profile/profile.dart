import 'package:buataja/Screens/home/components/maindrawer.dart';
import 'package:buataja/components/bottom_nav.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Theme.of(context).primaryColor,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Profile"),
        ),
        drawer: MainDrawer(),
        bottomNavigationBar: BottomNavBar(),
        body: ListView(
          padding: EdgeInsets.all(20),
          children: <Widget>[
            SizedBox(height: kDefaultPadding * 0.8),
            Container(
              width: 100,
              height: 100,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: NetworkImage(
                    'https://yt3.ggpht.com/yti/APfAmoFYaALkx11ktb3V2DAbh2wJ2OT5Qg7NuNUBPpn0',
                  ),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            SizedBox(height: kDefaultPadding * 0.4),
            Container(
              child: Center(
                child: Text(
                  "Aqshal Tata",
                  style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(height: kDefaultPadding * 0.4),
            Container(
              child: TextFormField(
                initialValue: 'aqshaltata.matt@gmail.com',
                keyboardType: TextInputType.emailAddress,
                autofocus: false,
                decoration: InputDecoration(
                  hintText: 'Email',
                  contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 10.0, 10.0),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12)),
                ),
              ),
            ),
            SizedBox(height: kDefaultPadding * 0.4),
            Container(
              child: TextFormField(
                initialValue: 'asdf1234',
                keyboardType: TextInputType.emailAddress,
                autofocus: false,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Password',
                  contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 10.0, 10.0),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12)),
                ),
              ),
            ),
            SizedBox(height: kDefaultPadding * 0.4),
            Container(
              child: TextFormField(
                initialValue: '085239057001',
                keyboardType: TextInputType.phone,
                autofocus: false,
                decoration: InputDecoration(
                  hintText: 'Phone Number',
                  contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 10.0, 10.0),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12)),
                ),
              ),
            ),
            SizedBox(height: kDefaultPadding * 0.4),
            Container(
              child: TextFormField(
                initialValue: 'Denpasar, 10 Oktober 2000',
                keyboardType: TextInputType.text,
                autofocus: false,
                decoration: InputDecoration(
                  hintText: 'Tempat Tanggal Lahir',
                  contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 10.0, 10.0),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12)),
                ),
              ),
            ),
            SizedBox(height: kDefaultPadding * 0.4),
            Container(
              child: TextFormField(
                initialValue: 'Pemogan, Gg. Anggrek, Denpasar, Bali',
                keyboardType: TextInputType.streetAddress,
                autofocus: false,
                decoration: InputDecoration(
                  hintText: 'Alamat',
                  contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 10.0, 10.0),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12)),
                ),
              ),
            ),
            SizedBox(height: kDefaultPadding * 0.4),
            Container(
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                onPressed: () {},
                padding: EdgeInsets.all(25),
                color: Theme.of(context).primaryColor,
                child: Text('Save Data', style: TextStyle(color: Colors.white)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
