import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mohamed/sizeConfig.dart';

class LabScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return new Scaffold(
      body: CustomScrollView(slivers: [
        SliverAppBar(
        backgroundColor: Colors.white,
        expandedHeight: 300.00,
        floating: true,
        pinned: true,
        flexibleSpace: FlexibleSpaceBar(
          background: new Image.asset("images/mmm.jpg",fit: BoxFit.cover,),

        ),

      ),
        SliverList(
        delegate:SliverChildListDelegate([
    Padding(
    padding: const EdgeInsets.all(15.0),child: Text("حسابك في مواقع التواصل الاجتماعي",style: TextStyle(fontSize: 20.0),)),

        new Container(
          child: new Column(
            children: [
              new Text("اختر من التالي",style: TextStyle(fontSize: 20.0)),
          new Container(
            height: 35.0,
            width: 300.0,
            color: Colors.blue,
            child: new Row(
              children: [
                new Text("تسجيل الدخول باستخدام بالفيسبوك",style: TextStyle(fontSize: 15.0),),

                  new Image.asset("images/mmmm.png"),


              ],
               ),



          ),

              new Divider(
                thickness: 1.0,
                height: 25.0,
                color: Colors.white,
              ),
              new Container(
                height: 35.0,
                width: 300.0,
                color: Colors.grey,
                child: new Row(
                  children: [
                    new Text("تسجيل الدخول بواسطة جوجل",style: TextStyle(fontSize: 15.0),),

                    new Image.asset("images/mmn.png"),



                  ],
                ),




              ),
              new Container(
                height: 50.0,
                width: 50.0,
                child: new Row(
                  children: [
                    new Text("تخطي",style: TextStyle(fontSize: 15.0),),
                  ],
                ),
              ),







            ],
          ),
        ),
    ]
        ),
        )
   ]

      ),




    );



  }
}
