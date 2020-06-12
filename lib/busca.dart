import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter/cupertino.dart';

class Buscar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF2196F3),
      body: Container(height: 1000,decoration: new BoxDecoration(image: new DecorationImage(image: AssetImage('asserts/fundoOf.jpg'), fit: BoxFit.cover)),child:Center(
        child: Container(
          child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Container(child :SpinKitCubeGrid(color: Color(0XDD000000), size: 150)),
            Container(child :Text("Buscando...",style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold),))
          ]),
        height: 300,),
      ),
    ),);
  }
}


