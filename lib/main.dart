import 'dart:async';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'dart:math';
import 'HomePage.dart';
import 'HardPage.dart';
import 'hard_level.dart';
// import 'hardlevel.dart';
import 'package:contactus/contactus.dart';

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
                    'images/Capture.jpg'),
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
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.pinkAccent, // status bar color
            brightness: Brightness.dark,
            title: Text('Dice App'),
            bottom: TabBar(
              tabs: [
                Tab(text: "Game Level"),
                Tab(text: "Contact Us"),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RaisedButton(
                      onPressed: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => HomePage()));
                      },
                      textColor: Colors.white,
                      padding: const EdgeInsets.all(0.0),
                      child: Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: <Color>[
                              Colors.pinkAccent,
                              Colors.pinkAccent,
                              Colors.pinkAccent,
                            ],
                          ),
                        ),
                        padding: const EdgeInsets.all(10.0),
                        child:
                        const Text('Simple Level', style: TextStyle(fontSize: 20)),
                      ),
                    ),
                    SizedBox(height: 20,),
                    RaisedButton(
                      onPressed: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => hard_level()));
                      },
                      textColor: Colors.white,
                      padding: const EdgeInsets.all(0.0),
                      child: Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: <Color>[
                              Colors.pinkAccent,
                              Colors.pinkAccent,
                              Colors.pinkAccent,
                            ],
                          ),
                        ),
                        padding: const EdgeInsets.all(10.0),
                        child:
                        const Text('Hard Level', style: TextStyle(fontSize: 20)),
                      ),
                    ),
                  ],),
              ),
              Column(
                children: [
                  ContactUs(
                    logo: AssetImage('images/Capture.jpg'),
                    email: 'mashr9980@gmail.com',
                    companyName: 'Aashir Tariq',
                    phoneNumber: '+923008808985',
                    githubUserName: 'aashir9980',
                    tagLine: 'Flutter Developer',
                  ),
                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}