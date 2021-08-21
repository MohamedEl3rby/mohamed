import 'package:flutter/material.dart';
import 'package:mohamed/sizeConfig.dart';

class SearchScreen extends StatelessWidget {
  static String routeName = '/SeearchSCC';
  TextEditingController _usernameController = new TextEditingController();
  TextEditingController _passwordController = new TextEditingController();

  void _clear() {
    setState(() {
      _usernameController.clear();
      _passwordController.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return new Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Center(
            child: Text(
          "Login App",
          style: TextStyle(color: Colors.black),
        )),
      ),
      body: new Container(
        alignment: Alignment.topCenter,
        child: new Column(
          children: [
            new Image.asset("images/mk.png",
                height: getProportionateScreenHeight(100.00),
                width: getProportionateScreenWidth(100.00)),
            new Container(
              height: 180,
              width: 380,
              child: new Column(
                children: [
                  new TextField(
                    controller: _usernameController,
                    decoration: new InputDecoration(
                      hintText: " enter your username",
                      icon: new Icon(Icons.person),
                    ),
                  ),
                  new TextField(
                    controller: _passwordController,
                    decoration: new InputDecoration(
                      hintText: " enter your password",
                      icon: new Icon(Icons.lock),
                    ),
                  ),
                  new Padding(padding: new EdgeInsets.all(15.0)),
                  new Center(
                    child: new Row(
                      children: [
                        new Container(
                          margin: const EdgeInsets.only(left: 37.0),
                          child: new RaisedButton(
                            onPressed: () => debugPrint("Login"),
                            child: new Text(
                              "Submit",
                              style: new TextStyle(
                                  color: Colors.white, fontSize: 20.5),
                            ),
                            color: Colors.red,
                          ),
                        ),
                        new Container(
                          margin: const EdgeInsets.only(left: 100.0),
                          child: new RaisedButton(
                            onPressed: _clear,
                            child: new Text(
                              "Clear",
                              style: new TextStyle(
                                  color: Colors.white, fontSize: 20.5),
                            ),
                            color: Colors.red,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            new Container(
              alignment: Alignment.center,
              child: new Text("Welcome In our App",
                  style: new TextStyle(
                      color: Colors.black,
                      fontSize: 24.0,
                      fontWeight: FontWeight.w700)),
            ),
          ],
        ),
      ),
    );
  }

  void setState(Null Function() param0) {}
}
