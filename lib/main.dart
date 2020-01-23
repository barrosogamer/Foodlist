import 'package:flutter/material.dart';

void main() => runApp(foodlist());

class foodlist extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.red[900],
        accentColor: Colors.grey[600],
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.grey[600],
          textTheme: ButtonTextTheme.primary,
        ), //ButtonThemeData
      ),//ThemeData
      home:Dashboard(),
    );
  }
}

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("DashBord")),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset("images/foodlist.jpg"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 150,
                height: 100,
                color: Theme.of(context).primaryColor,
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Icon(
                      Icons.attachment,
                      color: Colors.white,
                      size: 24,
                    ),
                    Text(
                      "Itens",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    )
                  ],
                ),
              ),
            ),
          ]),
    );
  }
}

