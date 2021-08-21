import 'package:flutter/material.dart';
import 'package:mohamed/sizeConfig.dart';
class NomScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Center(child: new Text("اعدادات",style: TextStyle(color: Colors.black,fontSize: 20.0))),
        actions: [
          Icon(Icons.arrow_forward),

        ],
      ),
      body: new Container(
        color: Colors.white,
        alignment: Alignment.center,
        child:new Column(
          children: [
            new Text("اعدادات عامة",style:TextStyle(color: Colors.black,fontSize: 15.0)),

           new Divider(
             thickness: 1.0,
             height: 5.0,
             color: Colors.grey,
           ),

            ListTile(


              title: Text(
                (" قائمة الشكاوي المقدمة "),
                style: const TextStyle(fontSize: 15),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 18,
                color: Colors.grey,
              ),

            ),
            new Divider(
              thickness: 1.0,
              height: 5.0,
              color: Colors.grey,
            ),

            ListTile(


              title: Text(
                ("نغمة التنبيه  "),
                style: const TextStyle(fontSize: 15),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 18,
                color: Colors.grey,
              ),

            ),
            new Divider(
              thickness: 1.0,
              height: 5.0,
              color: Colors.grey,
            ),
            ListTile(


              title: Text(
                ("تعديل البروفايل "),
                style: const TextStyle(fontSize: 15),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 18,
                color: Colors.grey,
              ),

            ),
            new Divider(
              thickness: 1.0,
              height: 5.0,
              color: Colors.grey,
            ),
            ListTile(


              title: Text(
                ("اعدادات اللغة "),
                style: const TextStyle(fontSize: 15),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 18,
                color: Colors.grey,
              ),

            ),
            new Divider(
              thickness: 1.0,
              height: 5.0,
              color: Colors.grey,
            ),
            ListTile(


              title: Text(
                ("شروط الاستخدام "),
                style: const TextStyle(fontSize: 15),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 18,
                color: Colors.grey,
              ),

            ),
            new Divider(
              thickness: 1.0,
              height: 5.0,
              color: Colors.grey,
            ),
            ListTile(


              title: Text(
                ("سياسة الخصوصية "),
                style: const TextStyle(fontSize: 15),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 18,
                color: Colors.grey,
              ),

            ),
            new Divider(
              thickness: 1.0,
              height: 5.0,
              color: Colors.grey,
            ),
            ListTile(


              title: Text(
                ("قيم التطبيق "),
                style: const TextStyle(fontSize: 15),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 18,
                color: Colors.grey,
              ),


            ),
            new Divider(
              thickness: 1.0,
              height: 5.0,
              color: Colors.grey,
            ),
            new Text("مساعدة",style: TextStyle(fontSize: 15.0),),
            new Divider(
              thickness: 1.0,
              height: 5.0,
              color: Colors.grey,
            ),
            ListTile(


              title: Text(
                ("نبذة عن التطبيق"),
                style: const TextStyle(fontSize: 15),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 18,
                color: Colors.grey,
              ),

            ),
            new Divider(
              thickness: 1.0,
              height: 5.0,
              color: Colors.grey,
            ),
            ListTile(


              title: Text(
                ("كيف اعمل في مرسول "),
                style: const TextStyle(fontSize: 15),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 18,
                color: Colors.grey,
              ),

            ),
            new Divider(
              thickness: 1.0,
              height: 5.0,
              color: Colors.grey,
            ),




          ],
        ),
      ),

    );
  }
}
