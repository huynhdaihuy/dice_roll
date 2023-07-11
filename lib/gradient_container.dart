import 'package:flutter/material.dart';
import 'dart:math';

const startAlign = Alignment.topLeft;
const endAlign = Alignment.bottomRight;
var randomize = Random();

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1,this.color2,{super.key});
  final Color color1;
  final Color color2;
  @override
  Widget build( context) {
    return Container(
        decoration: BoxDecoration(
         gradient: LinearGradient(
          colors: [color1,color2],
            begin: startAlign,
            end: endAlign
         )
         ),
         child:const Center(
          child:  DiceRoller() ,
          ),
        );
  }
}

class DiceRoller extends StatefulWidget{
  const DiceRoller({super.key});
  @override
  State <DiceRoller> createState(){
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller>{
    var curOrder = 2;
    void rollDice(){
    setState(() {
     curOrder = randomize.nextInt(6)+1;
      });
}
    @override
   Widget build(context){
      return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset('assets/images/dice-$curOrder.png',width: 200),
              const SizedBox(height: 20),
              TextButton(
              style: TextButton.styleFrom(padding: const EdgeInsets.all(20)),
              onPressed: rollDice, 
              child: const Text('Roll dice yo!',style: TextStyle(fontSize: 32),))
              ],
            );
    }
    
}