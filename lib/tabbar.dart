import 'package:flutter/material.dart';
import 'package:mohamed/MainScreen.dart';
import 'package:mohamed/hav.dart';
import 'package:mohamed/home.dart';

import 'fav.dart';

class MainTapbarr2 extends StatefulWidget {
  static String routeName = '/mainTapbarr2';
  @override
  _MainTapbarr2State createState() => _MainTapbarr2State();
}

class _MainTapbarr2State extends State<MainTapbarr2>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Transform.translate(
        offset: Offset(0, 15),
        child: FloatingActionButton(
          onPressed: () {},
          child: Icon(
            Icons.add,
            size: 40,
          ),
          elevation: 2.0,
        ),
      ),
      body: TabBarView(
        physics: NeverScrollableScrollPhysics(),
        children: <Widget>[
          MainScreen(),
          FavScreen(),
          Home(),
          Home(),
          HavScreen()
        ],
        controller: _tabController,
      ),
      bottomNavigationBar: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              offset: Offset(0.0, 1.0), //(x,y)
              blurRadius: 4.0,
            ),
          ],
        ),
        child: TabBar(
          unselectedLabelColor: Colors.grey,
          labelColor: Colors.green,
          indicator: UnderlineTabIndicator(),
          indicatorColor: Colors.green,
          labelStyle: TextStyle(fontSize: 10),
          tabs: <Widget>[
            Icon(
              Icons.home,
              size: 23,
            ),
            Icon(
              Icons.add,
              size: 23,
            ),
            Icon(
              Icons.settings,
              size: 45,
            ),
            Icon(
              Icons.settings,
              size: 23,
            ),
            Icon(
              Icons.settings,
              size: 23,
            ),
          ],
          controller: _tabController,
        ),
      ),
    );
  }
}

Widget _buildMiddleTabItem() {
  return Expanded(
    child: SizedBox(
      height: 60,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: 24),
          Text(''),
        ],
      ),
    ),
  );
}

class MyBorderShape extends ShapeBorder {
  MyBorderShape();

  @override
  EdgeInsetsGeometry get dimensions => EdgeInsets.zero;

  @override
  Path getInnerPath(Rect rect, {TextDirection textDirection}) => null;

  double holeSize = 20;

  @override
  Path getOuterPath(Rect rect, {TextDirection textDirection}) {
    print(rect.height);
    return Path.combine(
      PathOperation.difference,
      Path()
        ..addRRect(
            RRect.fromRectAndRadius(rect, Radius.circular(rect.height / 2)))
        ..close(),
      Path()
        ..addOval(Rect.fromCenter(
            center: rect.center.translate(0, -rect.height / 2),
            height: holeSize,
            width: holeSize))
        ..close(),
    );
  }

  @override
  void paint(Canvas canvas, Rect rect, {TextDirection textDirection}) {}

  @override
  ShapeBorder scale(double t) => this;
}
