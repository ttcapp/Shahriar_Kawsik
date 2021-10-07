import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
String BtmText = "Button 1";
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        centerTitle: true,
        title: Text("My App"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(

            children: [
              SizedBox(
                height: 15,
              ),
              RaisedButton(
                  child: Text("Button One"),
                  onPressed: (){

    }),
              Container(
                height: 300,
                  width: 400,
                  child: Image.network(
                      "https://cdn.pixabay.com/photo/2016/02/17/19/08/lotus-1205631_960_720.jpg"
                  )),
              Text("Fig 1: Water Lily"),
              SizedBox(
                height: 15,
              ),
              Container(
                  height: 600,
                  width: 400,
                  child:
                  Image.asset("assets/images/image1.jpeg")
              ),
              SizedBox(
                height: 15,
              ),
              Text("Fig 2:Red Rose"),

  ],
          ),
        ),
      ),
      );

  }
}



