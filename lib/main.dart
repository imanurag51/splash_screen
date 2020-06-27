import 'package:flutter/material.dart';
import 'dart:async';

void main() => runApp(Ashu());

class Ashu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
//    implement initState
    super.initState();
//    import 'dart:async'
    Timer(Duration(seconds: 2),()=> Navigator.push(context, MaterialPageRoute(builder: (context) => Anu()),));

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.red,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 50,
                        child: Icon(
                          Icons.business_center,
                          size: 50,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10),
                      ),
                      Text(
                        'Business',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircularProgressIndicator(backgroundColor: Colors.white,),
                    Padding(padding: EdgeInsets.only(top: 20)),
                    Text(
//                      \n se line change ho jata h
                      'Welcome to \n Business Ideas',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}


class Anu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Container(
          alignment: Alignment.bottomRight,
          height: double.infinity,
          width: double.infinity,
          padding: EdgeInsets.all(140),
            child: ConstrainedBox(
              constraints: BoxConstraints(
                maxHeight: 100,
                maxWidth: 100,
              ),
              child: FloatingActionButton(
                child: Text("start"),

//                color: Colors.green,
                onPressed: (){Navigator.pop(context);},
              ),
            ),
            color: Colors.yellow
        )
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
