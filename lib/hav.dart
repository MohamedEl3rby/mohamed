import 'package:mohamed/sizeConfig.dart';
import 'package:flutter/material.dart';
class HavScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return new Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: new Image.asset("images/mb.png",height:getProportionateScreenHeight(90.00) ,width:getProportionateScreenWidth(60.00)),
        actions: [
          new Text("mohamed",style:TextStyle(color: Colors.black)),


        ],


      ),
      body: new Container(
        color: Colors.white,

        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.center,

          children:[
          new Container(
            color: Colors.white,
            alignment: Alignment.center,
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ListTile(
                  leading: Icon(
                    Icons.animation,
                    color: Theme.of(context).accentColor,
                    size: 25,
                  ),

                  title: Text(
                    ("رصيد الحساب "),
                    style: const TextStyle(fontSize: 15),
                  ),
                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                    size: 18,
                    color: Colors.greenAccent,
                  ),

                ),
                ListTile(
                  leading: Icon(
                    Icons.style,
                    color: Theme.of(context).accentColor,
                    size: 25,
                  ),
                  title: Text(
                    ("عدد الطلبات"),
                    style: const TextStyle(fontSize: 15),
                  ),
                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                    size: 18,
                    color: Colors.greenAccent,
                  ),

                ),
                ListTile(
                  leading: Icon(
                    Icons.star,
                    color: Theme.of(context).accentColor,
                    size: 25,
                  ),
                  title: Text(
                    ("تقييمات الخدمات"),
                    style: const TextStyle(fontSize: 15),
                  ),
                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                    size: 18,
                    color: Colors.greenAccent,
                  ),

                ),
                ListTile(
                  leading: Icon(
                    Icons.announcement,
                    color: Theme.of(context).accentColor,
                    size: 25,
                  ),
                  title: Text(
                    (" ملاحظات المستخدمين"),
                    style: const TextStyle(fontSize: 15),
                  ),
                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                    size: 18,
                    color: Colors.greenAccent,
                  ),

                ),
                ListTile(
                  leading: Icon(
                    Icons.style,
                    color: Theme.of(context).accentColor,
                    size: 25,
                  ),
                  title: Text(
                    (" الكوبونات"),
                    style: const TextStyle(fontSize: 15),
                  ),
                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                    size: 18,
                    color: Colors.greenAccent,
                  ),

                ),
                ListTile(
                  leading: Icon(
                    Icons.settings_applications,
                    color: Theme.of(context).accentColor,
                    size: 25,
                  ),

                  title: Text(
                    (" أعدادات"),
                    style: const TextStyle(fontSize: 15),
                  ),
                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                    size: 18,
                    color: Colors.greenAccent,
                  ),

                ),
                ListTile(
                  leading: Icon(
                    Icons.apps_sharp,
                    color: Theme.of(context).accentColor,
                    size: 25,
                  ),

                  title: Text(
                    (" طريقة السداد"),
                    style: const TextStyle(fontSize: 15),
                  ),
                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                    size: 18,
                    color: Colors.greenAccent,
                  ),

                ),

              ],
            ),
          ),

           ],
        ),
      ),



    );
  }
}
