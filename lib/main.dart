import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var textColor = Color.fromRGBO(250, 250, 250, 0.95);
    var textStyle = TextStyle(fontFamily: 'PT Sans', color: textColor);
    SystemChrome.setEnabledSystemUIOverlays([]);
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            stops: [0.05, 0.35, 0.95],
            colors: <Color>[
              Color.fromRGBO(30, 30, 30, 1),
              Color.fromRGBO(45, 45, 45, 1),
              Color.fromRGBO(15, 15, 15, 1),
            ],
            tileMode: TileMode.clamp,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(Icons.keyboard_arrow_down,
                      color: Colors.white54, size: 24),
                  Text(
                    'Imagine Dragons',
                    style: textStyle.merge(TextStyle(fontSize: 15)),
                  ),
                  Icon(Icons.more_horiz, color: Colors.white54, size: 24),
                ],
              ),
              SizedBox(height: 40),
              SizedBox(width: 320, child: Image.asset('images/cover.PNG')),
              SizedBox(height: 25),
              Text('Bleeding Out',
                  style: textStyle.merge(TextStyle(fontSize: 24))),
              SizedBox(height: 4),
              Text('Imagine Dragons',
                  style: textStyle
                      .merge(TextStyle(fontSize: 18, color: Colors.white54))),
              SizedBox(height: 24),
              Row(
                children: <Widget>[
                  Container(
                    width: 144,
                    height: 1.5,
                    color: Colors.white54,
                  ),
                  Flexible(
                    child: Container(
                      height: 1.0,
                      color: Colors.white54,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    '1;27',
                    style: textStyle.merge(TextStyle(
                        fontSize: 12,
                        color: Color.fromRGBO(250, 250, 250, 0.46))),
                  ),
                  Text(
                    '-2:16',
                    style: textStyle.merge(TextStyle(
                        fontSize: 12,
                        color: Color.fromRGBO(250, 250, 250, 0.46))),
                  )
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(
                    Icons.favorite_border,
                    color: Colors.white54,
                  ),
                  Icon(
                    Icons.skip_previous,
                    color: Colors.white54,
                    size: 50,
                  ),
                  Icon(
                    Icons.play_circle_filled,
                    color: textColor,
                    size: 70,
                  ),
                  Icon(
                    Icons.skip_next,
                    color: textColor,
                    size: 50,
                  ),
                  Icon(
                    Icons.do_not_disturb,
                    color: Colors.white54,
                  ),
                ],
              ),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(Icons.bluetooth, color: Colors.green, size: 18),
                  Icon(Icons.save_alt, color: Colors.white54, size: 18),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
