import 'dart:io';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: DifferentScreenAndSize  (),

    );
  }
}



class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.orange,
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.white,
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.green,
            ),
          )
        ],
      ),
    );
  }
}

class DifferentScreen extends StatelessWidget {
  const DifferentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(

        children: [

          Expanded(
            child: Container(
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.red,
                    ),

                  ),
                  Expanded(
                    child: Container(
                      color: Colors.white,
                    ),

                  ),
                  Expanded(
                    child: Container(
                      color: Colors.red,
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.white,
                    ),

                  ),
                  Expanded(
                    child: Container(
                      color: Colors.red,
                    ),

                  ),
                  Expanded(
                    child: Container(
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.red,
                    ),

                  ),
                  Expanded(
                    child: Container(
                      color: Colors.white,
                    ),

                  ),
                  Expanded(
                    child: Container(
                      color: Colors.red,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DifferentScreenAndSize extends StatelessWidget {
  const DifferentScreenAndSize({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(

        children: [

          Expanded(
            child: Container(

              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.red,
                    ),

                  ),
                  Expanded(
                    child: Container(
                      color: Colors.white,
                    ),

                  ),
                  Expanded(
                    child: Container(
                      color: Colors.deepPurple,
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: Column(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      color: Colors.green,
                    ),

                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      color: Colors.cyan,
                    ),

                  ),
                  Expanded(
                    child: Container(
                      color: Colors.yellow,
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.deepOrange,
                    ),

                  ),
                  Expanded(
                    flex: 3,
                    child: Container(
                      color: Colors.deepPurpleAccent,
                    ),

                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      color: Colors.yellowAccent,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}



