import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PageController _pageController = PageController();
  GlobalKey _bottomNavigationKey = GlobalKey();
  int _currentPage = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: _currentPage,
        backgroundColor: Colors.white,
        color: Theme.of(context).primaryColor,
        height: 65.0,
        items: <Widget>[
          Icon(Icons.playlist_add_check, color: Colors.white, size: 30.0),
          Icon(Icons.person_pin, color: Colors.white, size: 30.0),
          Icon(Icons.home, color: Colors.white, size: 45.0),
          Icon(Icons.favorite, color: Colors.white, size: 30.0),
          Icon(Icons.shopping_cart, color: Colors.white, size: 30.0),
        ],
        onTap: (pageIndex) {
          setState(() {
            _currentPage = pageIndex;
          });
          _pageController.animateToPage(_currentPage, duration: Duration(milliseconds: 600), curve: Curves.easeInOut);
        },
      ),
      body: SafeArea(
        child: PageView(
          controller: _pageController,
          children: <Widget>[
            Container(
              color: Colors.red,
            ),
            Container(
              color: Colors.green,
            ),
            Container(
              color: Colors.blue,
            ),
            Container(
              color: Colors.yellow,
            ),
            Container(
              color: Colors.black,
            )
          ],
        ),
      ),
    );
  }
}
