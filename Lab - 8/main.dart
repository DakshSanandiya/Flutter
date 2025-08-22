import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lab - 8',
      home: RollDice(),
    );
  }
}



class DisplayImg extends StatelessWidget {
  const DisplayImg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.white,
              child: Image.asset('assets/MagnoliaAlpha.png'),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.white,
              child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOARDy2Jz02HL7nn0LU7l-O1iUaxlVFNlDkg&s"),
            ),
          ),
        ],
      ),
    );
  }
}

class DisplayTextOnImg extends StatelessWidget {
  const DisplayTextOnImg({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Stack(
                children: [
                  Container(
                    color: Colors.white,
                    child: Image.asset('assets/MagnoliaAlpha.png'),
                  ),
                  Center(child: Text("This Is A Text On Img",style: TextStyle(color: Colors.yellowAccent,fontSize: 50),))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}



class RollDice extends StatefulWidget {
  RollDice({super.key});

  @override
  State<RollDice> createState() => _RollDiceState();
}

class _RollDiceState extends State<RollDice> {
  String ImageURL = 'assets/dice-one.png';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 8,
            child: Container(
              child: Image.asset(ImageURL),
            ),

          ),
          Expanded(
            child: Container(
              child: ElevatedButton(onPressed: (){
                int random = Random().nextInt(6);
                if(random == 1)
                {
                  ImageURL = 'assets/dice-one.png';
                }
                else if(random == 2)
                {
                  ImageURL = 'assets/dice-two.png';
                }
                else if(random == 3)
                {
                  ImageURL = 'assets/dice-three.png';
                }
                else if(random == 4)
                {
                  ImageURL = 'assets/dice-four.png';
                }
                else if(random == 5)
                {
                  ImageURL = 'assets/dice-five.png';
                }
                else if(random == 6)
                {
                  ImageURL = 'assets/dice-six.png';
                }

                setState(() {});
              },
              child:

                  Text("Roll Dice",style: TextStyle(color: Colors.deepPurpleAccent),)),
            ),

          )
          ]
      ),
    );
  }
}

