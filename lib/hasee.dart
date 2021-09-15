import 'package:flutter/material.dart';

class Haseeb extends StatefulWidget {
  @override
  _HaseebState createState() => _HaseebState();
}

class _HaseebState extends State<Haseeb> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Home',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () => debugPrint('Item Searched'),
              icon: Icon(Icons.search),
            ),
            IconButton(
              onPressed: () => debugPrint('Account'),
              icon: Icon(Icons.account_circle),
            ),
          ],
          backgroundColor: Colors.purple,
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                child: Text(
                  'List Setting',
                  style: TextStyle(
                    color: Colors.purple,
                    fontSize: 25.0,
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  'A1',
                  style: TextStyle(
                    color: Colors.purple,
                    fontSize: 25.0,
                  ),
                ),
                onTap: () => debugPrint('a1'),
              ),
              ListTile(
                title: Text(
                  'A1',
                  style: TextStyle(
                    color: Colors.purple,
                    fontSize: 25.0,
                  ),
                ),
                onTap: () => debugPrint('a1'),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.purple,
          items: [
            // ignore: deprecated_member_use
            BottomNavigationBarItem(
                icon: Icon(Icons.account_balance_wallet, color: Colors.blue),
                title: Text('Wallet')), // ignore: deprecated_member_use
            // ignore: deprecated_member_use
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart, color: Colors.blue),
                // ignore: deprecated_member_use
                title: Text(
                  'Cart',
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                )), // ignore: deprecated_member_use
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => debugPrint('add item'),
          child: Icon(Icons.search),
          backgroundColor: Colors.purple,
        ),
      ),
    );
  }
}
