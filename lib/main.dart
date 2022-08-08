import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
 
String message = "Tekan tombol dibawah ini";

void tombolDitekan()
{
  setState(() {
    message = "Tombol sudah ditekan";
  });
}
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(" Aplikasi 195411042"),
        ),
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(message),
                RaisedButton(
                  child: Text("Tekan Saya"),
                  onPressed: tombolDitekan,
                )
              ],
            )
        )
        ),
      );
  }
}
