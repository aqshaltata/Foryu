import 'package:buataja/Screens/home/components/maindrawer.dart';
import 'package:buataja/components/bottom_nav.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class proDesc3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Theme.of(context).primaryColor,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Detail Informasi"),
        ),
        drawer: MainDrawer(),
        bottomNavigationBar: BottomNavBar(),
        body: Card(
          child: ListView(
            children: <Widget>[
              Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/lampu.jpg'),
                    fit: BoxFit.fill,
                    scale: 3,
                  ),
                ),
              ),
              ListTile(
                title: const Text(
                  'Anderssen & Voll’s ‘Lantern’',
                  style: TextStyle(
                      fontWeight: FontWeight.w500, color: Colors.orange),
                ),
                subtitle: const Text(
                  'Rp.410.000',
                  style: TextStyle(color: Colors.orange),
                ),
                trailing: Icon(
                  Icons.chevron_right,
                  color: Theme.of(context).primaryColor,
                ),
              ),
              const Divider(),
              ListTile(
                title: const Text(
                  '2RB+ Terjual',
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                leading: Wrap(
                  spacing: 2,
                  children: [
                    Icon(
                      Icons.star_rate,
                      color: Theme.of(context).primaryColor,
                    ),
                    Icon(
                      Icons.star_rate,
                      color: Theme.of(context).primaryColor,
                    ),
                    Icon(
                      Icons.star_rate,
                      color: Theme.of(context).primaryColor,
                    ),
                    Icon(
                      Icons.star_rate,
                      color: Theme.of(context).primaryColor,
                    ),
                    Icon(
                      Icons.star_rate,
                      color: Theme.of(context).primaryColor,
                    ),
                  ],
                ),
                trailing: Wrap(
                  spacing: 12,
                  children: [
                    Icon(CupertinoIcons.heart),
                    Icon(Icons.facebook),
                  ],
                ),
              ),
              const Divider(),
              ListTile(
                leading: Icon(Icons.article),
                title: Text("Stok"),
                subtitle: Text("Stok dapat berubah sewaktu-waktu"),
                trailing: Text("13"),
              ),
              ListTile(
                leading: Icon(Icons.circle),
                title: Text("Merk"),
                trailing: Text("Anderssen & Voll’s"),
              ),
              ListTile(
                leading: Icon(Icons.map),
                title: Text("Dikirim Dari"),
                subtitle: Text("Pengiriman ke seluruh daerah di Indonesia"),
                trailing: Text("Denpasar, Bali"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
