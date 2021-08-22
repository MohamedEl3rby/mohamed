import 'package:flutter/material.dart';
import 'package:mohamed/Widgets/CustomContainer.dart';
import 'package:mohamed/search.dart';
import 'package:mohamed/sizeConfig.dart';

import 'Helper/DummyData.dart';
import 'Widgets/SearchWidget.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    final mSize = MediaQuery.of(context).size;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  width: mSize.width,
                  padding: EdgeInsets.only(
                    left: 10.0,
                    right: 20.0,
                    top: 30.0,
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(height: 20.0),
                        Container(
                          child: Row(
                            children: [
                              Text(
                                "Mohamed",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold,
                                  wordSpacing: 1,
                                  letterSpacing: .5,
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                size: 15,
                              )
                            ],
                          ),
                        ),
                        GestureDetector(
                            onTap: () => Navigator.of(context)
                                .pushNamed(SearchScreen.routeName),
                            child: SearchWidget()),
                      ]),
                ),
              ],
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
            sliver: SliverGrid(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 2.0,
                mainAxisSpacing: 5.0,
                childAspectRatio: 1.6,
              ),
              delegate: SliverChildListDelegate([
                for (int i = 0; i < DummyData.productList.length; i++)
                  CustomContainer(
                    backgroundColor: DummyData.productList[i].backgroundColor,
                    size: 100,
                    progress: 0.6,
                    progressColor: DummyData.productList[i].progressColor,
                    title: DummyData.productList[i].title,
                  ),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
