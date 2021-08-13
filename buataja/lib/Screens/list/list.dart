import 'package:buataja/Screens/home/components/maindrawer.dart';
import 'package:buataja/components/bottom_nav.dart';
import 'package:flutter/material.dart';

class listBarang extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Theme.of(context).primaryColor,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("LIST BARANG"),
        ),
        drawer: MainDrawer(),
        bottomNavigationBar: BottomNavBar(),
        body: Center(
          child: new ListView(
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.tab),
                title: Text("Kursi"),
                onTap: () {},
                trailing: Icon(Icons.arrow_forward),
              ),
              ListTile(
                leading: Icon(Icons.tab),
                title: Text("Meja"),
                onTap: () {},
                trailing: Icon(Icons.arrow_forward),
              ),
              ListTile(
                leading: Icon(Icons.tab),
                title: Text("Cermin"),
                onTap: () {},
                trailing: Icon(Icons.arrow_forward),
              ),
              ListTile(
                leading: Icon(Icons.tab),
                title: Text("Piring Hias"),
                onTap: () {},
                trailing: Icon(Icons.arrow_forward),
              ),
              ListTile(
                leading: Icon(Icons.tab),
                title: Text("Keranjang Hias"),
                onTap: () {},
                trailing: Icon(Icons.arrow_forward),
              ),
              ListTile(
                leading: Icon(Icons.tab),
                title: Text("Gorden"),
                onTap: () {},
                trailing: Icon(Icons.arrow_forward),
              ),
              ListTile(
                leading: Icon(Icons.tab),
                title: Text("Bingkai Foto"),
                onTap: () {},
                trailing: Icon(Icons.arrow_forward),
              ),
              ListTile(
                leading: Icon(Icons.tab),
                title: Text("Lemari"),
                onTap: () {},
                trailing: Icon(Icons.arrow_forward),
              ),
              ListTile(
                leading: Icon(Icons.tab),
                title: Text("Laci"),
                onTap: () {},
                trailing: Icon(Icons.arrow_forward),
              ),
              ListTile(
                leading: Icon(Icons.tab),
                title: Text("Lampu Hias"),
                onTap: () {},
                trailing: Icon(Icons.arrow_forward),
              ),
              ListTile(
                leading: Icon(Icons.tab),
                title: Text("kipas Angin"),
                onTap: () {},
                trailing: Icon(Icons.arrow_forward),
              ),
              ListTile(
                leading: Icon(Icons.tab),
                title: Text("Jam Dingding"),
                onTap: () {},
                trailing: Icon(Icons.arrow_forward),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
