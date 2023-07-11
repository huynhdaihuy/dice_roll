import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';
void main(){
  runApp( const MaterialApp(
    home: Scaffold(
      body:GradientContainer(Color.fromARGB(255, 6, 12, 44),Color.fromARGB(255, 67, 9, 143)),
      ) ,
    )
  );
}

