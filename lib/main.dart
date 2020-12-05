import 'dart:async';
import 'package:flutter/material.dart';
import 'dart:ui';


void main() {
  runApp(SplashScreen());
}
class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}


class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 6),
            () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => DiceApp())));
  }
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 50,
            ),
            Image(
                image: AssetImage(
                    'images/dice.png'),
                height:300),
            Text("Dice App",style:TextStyle(fontSize: 50)),
            Text("Aashir Tariq",style:TextStyle(fontSize: 30)),
            Text("SP17-BCS-033",style:TextStyle(fontSize: 30)),
            SizedBox(height: 10,),
          ],
        )
    );
  }
}

class DiceApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.indigo,
        body: Center(
          child: Row(
            children: [
              // Expanded(
              //   child: FlatButton(
              //     onPressed: (){,
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
