import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Clipoval',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Page(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Page extends StatefulWidget{
  @override
  _PageState createState() => _PageState();

}
class _PageState extends State<Page>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Rahim Sarker'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: ClipOval(
          child: Image.network('https://www.skydigitalbd.com/assets/img/hero-img.png',fit: BoxFit.fill,),clipper: MyClip(),
        ),
      ),
      backgroundColor: Colors.lightBlue[50],
    );
  }


}
class MyClip extends CustomClipper<Rect>{
  Rect getClip(Size size){
    return Rect.fromLTWH(100, 100, 100,100);
  }
  bool shouldReclip(oldClipper){
    return false;
  }
}