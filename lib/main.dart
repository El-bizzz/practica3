
import 'package:flutter/material.dart';


void main(){
  runApp(new Myhome());
}


Widget build(BuildContext context) {
  return MaterialApp(
    title: "Stack App",
    theme: ThemeData(
      primarySwatch: Colors.black54,
      visualDensity: VisualDensity.adaptivePlatformDensity
    ),
    home: Myhome(),
  );
}

class Myhome extends StatelessWidget{
  final fondo = Container(
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage("assets/fondo.jpg"),
          fit: BoxFit.cover
      )
    ),
  );

  final gradiente = Center(
    child: Container(
      height: 80,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Colors.black45.withOpacity(0.2),Colors.black54.withOpacity(0.2)]
        )
      ),

    ),

  );

  final logo = Center(
    child: Container(
      height: 70,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/logo-infocal.png")
        )
      ),
    ),
  );

  final mensaje = Container(
    alignment: Alignment.bottomCenter,
    margin: EdgeInsets.all(20),
    child: Text(
      "Sistemas Informáticos",
      style: TextStyle(
        color: Colors.white,
        fontStyle: FontStyle.italic,
        fontSize: 16
      ),
    ),
  );


  @override
  Widget build(BuildContext context) {
    var deviceData = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My app"
        )
      ),
    );
  }

}