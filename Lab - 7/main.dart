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
      home:PrintInConsole(),
    );
  }
}

class PrintHelloWorld extends StatelessWidget {
  const PrintHelloWorld({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Hello World" , style: TextStyle(color: Colors.redAccent,fontSize: 100),),
      ),
    );
  }
}

class CustomWidget extends StatelessWidget {
  const CustomWidget({super.key});

  Widget MyText(String data){
    return Text(data , style: TextStyle(color: Colors.pinkAccent,fontSize: 40),);
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MyText("Hello This Is My Custom Widget"),
      ),
    );
  }
}

class PrintInConsole extends StatelessWidget {
  PrintInConsole({super.key});

  TextEditingController mycontroller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:Column(

          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            TextFormField(
              controller: mycontroller,
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            ElevatedButton(onPressed: (){
              print(mycontroller.text);
            }, child: Text("Submit" , style: TextStyle(color: Colors.blue),),)
          ],
        ),
      ),
    );
  }

  
}

