import 'package:delivery_app/view/Screens/cart_screen.dart';
import 'package:delivery_app/view/Screens/favorite_screen.dart';
import 'package:delivery_app/view/Screens/main_screen.dart';
import 'package:delivery_app/view/Screens/orders_screen.dart';
import 'package:delivery_app/view/Screens/profile_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  GlobalKey _bottomNavigationKey = GlobalKey();
  int _currentPage = 2;
  int _cartAmount = 2;

  static const Color transparent = Color(0x00000000);

  final MainScreen _mainScreen = new MainScreen();
  final ProfileScreen _profileScreen = new ProfileScreen();
  final FavoriteScreen _favoriteScreen = new FavoriteScreen();
  final OrdersScreen _ordersScreen = new OrdersScreen();
  final CartScreen _cartScreen = new CartScreen();

  Widget _screens = new MainScreen();

  Widget _transition(int index){
    switch (index){
      case 0:
        return _ordersScreen;
        break;

      case 1:
        return _profileScreen;
        break;

      case 2:
        return _mainScreen;
        break;

      case 3:
        return _favoriteScreen;
        break;

      case 4:
        return _cartScreen;
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: _currentPage,
        backgroundColor: transparent,
        color: Theme.of(context).primaryColor,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 450),
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
                bottom: 12.0,
                child: Container(
                  width: 16.0,
                  height: 18.0,
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
        onTap: (int pageIndex) {
          setState(() {
            _screens = _transition(pageIndex);
          });
        }
      ),
      body: _screens,
    );
  }
}
