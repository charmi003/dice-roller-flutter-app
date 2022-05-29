import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  //storing the references to the images
  AssetImage one=AssetImage("images/one.png");
  AssetImage two=AssetImage("images/two.png");
  AssetImage three=AssetImage("images/three.png");
  AssetImage four=AssetImage("images/four.png");
  AssetImage five=AssetImage("images/five.png");
  AssetImage six=AssetImage("images/six.png");

  late AssetImage diceImage1;
  late AssetImage diceImage2;

  //? initial state
  @override 
  void initState(){
    super.initState();
    setState(() {
      diceImage1=one;
      diceImage2=one;
    });
  }

  void rollDice(){
    int rand1=Random().nextInt(5)+1;
    int rand2=Random().nextInt(5)+1;
    AssetImage newImage1;
    AssetImage newImage2;

    switch(rand1){
      case 1:
        newImage1=one;
        break;
      case 2:
        newImage1=two;
        break;
      case 3:
        newImage1=three;
        break;
      case 4:
        newImage1=four;
        break;
      case 5:
        newImage1=five;
        break;
      case 6:
        newImage1=six;
        break;
      default:
        newImage1=one;
    }

    switch(rand2){
      case 1:
        newImage2=one;
        break;
      case 2:
        newImage2=two;
        break;
      case 3:
        newImage2=three;
        break;
      case 4:
        newImage2=four;
        break;
      case 5:
        newImage2=five;
        break;
      case 6:
        newImage2=six;
        break;
      default:
        newImage2=one;
    }


    setState(() {
      diceImage1=newImage1;  
      diceImage2=newImage2;                                   
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Dice Roller')
      ),
      body:Container(
        child:Center(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image(
                    image:diceImage1,
                    width:100,
                    height:100
                  ),
                  Image(
                    image:diceImage2,
                    width:100,
                    height:100
                  ),
                ],
              ),
              Container(
                margin:const EdgeInsets.only(top:70.0),
                child: ElevatedButton(
                  onPressed: rollDice, 
                  child: const Text("Roll The Dice!", style:TextStyle(fontSize:22, color: Colors.white, fontFamily: "OpenSans", fontWeight: FontWeight.bold)),
                  style: ButtonStyle(
                    padding:MaterialStateProperty.all(const EdgeInsets.fromLTRB(30, 15, 30, 15)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(28.0),
                        side: BorderSide(color: Colors.deepOrange)
                      )
                    )
                  ),
                ),
              )
            ],
          )
        )
      )

    );
  }
}