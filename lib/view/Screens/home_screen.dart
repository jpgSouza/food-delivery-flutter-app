import 'package:delivery_app/view/Screens/cart_screen.dart';
import 'package:delivery_app/view/Screens/favorite_screen.dart';
import 'package:delivery_app/view/Screens/main_screen.dart';
import 'package:delivery_app/view/Screens/orders_screen.dart';
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
  int _cartAmount = 2;

  static const Color transparent = Color(0x00000000);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: _currentPage,
        backgroundColor: transparent,
        color: Theme.of(context).primaryColor,
        height: 65.0,
        items: <Widget>[
          Icon(Icons.playlist_add_check, color: Colors.white, size: 30.0),
          Icon(Icons.person_pin, color: Colors.white, size: 30.0),
          Icon(Icons.home, color: Colors.white, size: 45.0),
          Icon(Icons.favorite, color: Colors.white, size: 30.0),
          Stack(
            children: <Widget>[
              Icon(Icons.shopping_cart, color: Colors.white, size: 30.0),
              Positioned(
                left: 12.0,
                bottom: 14.0,
                child: Container(
                  width: 16.0,
                  height: 16.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.black,
                  ),
                  child: Text("$_cartAmount", style: TextStyle(color: Colors.white),textAlign: TextAlign.center,),
                ),
              )
            ],
          )
        ],
        onTap: (pageIndex) {
          setState(() {
            _currentPage = pageIndex;
          });
          _pageController.animateToPage(_currentPage,
              duration: Duration(milliseconds: 600), curve: Curves.easeInOut);
        },
      ),
      body: SafeArea(
        child: PageView(
          controller: _pageController,
          children: <Widget>[
            OrdersScreen(),
            Container(
              color: Colors.green,
            ),
            MainScreen(),
            FavoriteScreen(),
            CartScreen(),
          ],
        ),
      ),
    );
  }
}
