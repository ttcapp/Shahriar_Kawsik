import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
double imgHight = 150;
double imgwight = 150;
bool imgvsblty1 = false;
bool imgvsblty2 = false;
String btnText1 = "Button One ";
String btnText2 = "Button Two";
String btnText3 = "Button Three";
String imgSrc1 = "https://cdn.pixabay.com/photo/2016/02/17/19/08/lotus-1205631_960_720.jpg";
Color btnColor1 = Colors.green;
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
      body:
      SingleChildScrollView(
        child: Center(
          child: Column(

            children: [

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                 children: [
                   RaisedButton(onPressed: (){

                   },
                     child: Text(btnText1) ,

                   ),
                   Container(
                     decoration: BoxDecoration(
                       image: DecorationImage(image: NetworkImage(imgSrc1),fit: BoxFit.cover),
                       border: Border.all(color: Colors.lightGreen, width: 4),
                       borderRadius: BorderRadius.all(Radius.circular(40),),),
                       height: imgHight,
                       width: imgwight,
                       //child: Image.network(imgSrc1,fit: BoxFit.cover)
                   ),
                   RaisedButton(onPressed: (){

                   },
                     child: Text(btnText2) ,

                   ),
                   Container(
                     decoration: BoxDecoration(
                       image: DecorationImage(image: NetworkImage(imgSrc1),fit: BoxFit.cover),
                       border: Border.all(color: Colors.lightGreen, width: 4),
                       borderRadius: BorderRadius.all(Radius.circular(40),),),
                     height: imgHight,
                     width: imgwight,
                   ),
                   Container(
                       height: imgHight,
                       width: imgwight,
                       child: Image.network(imgSrc1)
                   ),
                   Container(
                       height: imgHight,
                       width: imgwight,
                       child: Image.network(imgSrc1)
                   ),
                   Container(
                       height: imgHight,
                       width: imgwight,
                       child: Image.network(imgSrc1)
                   ),
                 ],
                ),
              ),





              SizedBox(
                height: 15,
              ),
              RaisedButton(
                color: btnColor1,
                  child: Text(btnText1),
                  onPressed: (){
                    setState(() {
                      imgvsblty1=true;
                      btnColor1 = Colors.redAccent ;
                      btnText1 = "Button Pressed";
                    });

    }),
              Visibility(
                visible: imgvsblty1,
                child: Container(
                  height: 300,
                    width: 400,
                    child: Image.network(
                        "https://cdn.pixabay.com/photo/2016/02/17/19/08/lotus-1205631_960_720.jpg"
                    )),
              ),
              Visibility(
                visible: imgvsblty1,
                  child: Text("Fig 1: Water Lily")),
              SizedBox(
                height: 15,
              ),
              RaisedButton(
                child: Text(btnText2),
                onPressed: (){
                  setState(() {
                    btnText2="Button Pressed";
                    imgvsblty2=true;
                  });
                },
              ),
               Visibility(
                  visible: imgvsblty2,
                  child: Container(
                      height: 600,
                      width: 400,
                      child:
                      Image.asset("assets/images/image1.jpeg")
                  ),
                ),

              SizedBox(
                height: 15,
              ),
              Visibility(
                visible: imgvsblty2,
                  child: Text("Fig 2:Red Rose")),
              SizedBox(
                height: 15,
              ),
              RaisedButton(
                color: Colors.red,
                  child: Text(btnText3),
                  onPressed:(){
                    setState(() {
                      btnText3="Button Pressed";
                    });

                  }),

  ],
          ),
        ),
      ),
      );

  }
}



