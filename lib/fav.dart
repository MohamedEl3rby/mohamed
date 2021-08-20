import 'package:flutter/material.dart';
import 'package:mohamed/sizeConfig.dart';


class FavScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return new Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.greenAccent,
          title: Text("الطلبات", style: TextStyle(color: Colors.black),),

        ),
        body: new Container(
          color: Colors.white,
          alignment: Alignment.center,

          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                children: [
                  new Container(
                    color: Colors.white,
                    child: new Image.asset("images/mm.png",height:getProportionateScreenHeight(600.00) ,width:getProportionateScreenWidth(200.00)),
                    
                  ),

                  
                ],

              ),


            ],
          ),
        ),

        bottomNavigationBar: BottomNavigationBar(items: [
          BottomNavigationBarItem(icon: Icon(Icons.adb),title:Text("test"),backgroundColor: Colors.greenAccent),
          BottomNavigationBarItem(icon: Icon(Icons.call),title:Text("us")),
          BottomNavigationBarItem(icon: Icon(Icons.map),title:Text("visit")),
          BottomNavigationBarItem(icon: Icon(Icons.add),title:Text("+")),
          BottomNavigationBarItem(icon: Icon(Icons.favorite),title:Text("fav")),
        ]
        )

    );
  }
}