import 'package:flutter/material.dart';

import 'Add.dart';
import 'Home.dart';
import 'Setting.dart';

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
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home:  ActionBarDemo(),
    );
  }
}

class TabViewDemo extends StatelessWidget {
  const TabViewDemo ({super.key});

  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("This is AppBar"),
          bottom: TabBar(
            tabs: [
              Tab(
                child: Text("Home"),
              ),Tab(
                child: Text("Setting"),
              ),Tab(
                child: Text("Add"),
              )
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Home(),
            Setting(),
            Add(),
          ],
        ),
      ),
    );
  }
}

class TabViewWithIcon extends StatelessWidget {
  const TabViewWithIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("This is AppBar"),
          bottom: TabBar(
            tabs: [
              Tab(
                child: Icon(Icons.home),
              ),Tab(
                child: Icon(Icons.settings),
              ),Tab(
                child: Icon(Icons.add),
              )
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Home(),
            Setting(),
            Add(),
          ],
        ),
      ),
    );
  }
}







class NavigationDrawerDemo extends StatefulWidget {
   NavigationDrawerDemo({super.key});

  @override
  State<NavigationDrawerDemo> createState() => _NavigationDrawerDemoState();
}

class _NavigationDrawerDemoState extends State<NavigationDrawerDemo> {
  int SelectedIndex = 0;
  List<Widget> Pages = [
    Home(),
    Setting(),
    Add()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("This is AppBar"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {
                SelectedIndex = 0;
                Navigator.pop(context);
                setState(() {});
              },
              ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Setting"),
              onTap: () {
                SelectedIndex = 1;
                Navigator.pop(context);
                setState(() {});
              },
            ),
            ListTile(
              leading: Icon(Icons.add),
              title: Text("Add"),
              onTap: () {

                SelectedIndex = 2;
                Navigator.pop(context);
                setState(() {});
              },

            )
          ],
        ),
      ),
      body: Pages[SelectedIndex],

    );
  }
}



class ActionBarDemo extends StatelessWidget {
   ActionBarDemo({super.key});

    void showdialog(BuildContext context,String val){
      showDialog(context: context, builder: (context) {
        return AlertDialog(

          actions: [
            Text(val),

            ElevatedButton(onPressed: (){
              Navigator.pop(context);
            },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                ),
              child: Text("Close")),
          ],
        );
      },
      );
   }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("This is AppBar"),
        actions: [
          PopupMenuButton(
            onSelected: (value){
              if(value == "SettingValue"){
                showdialog(context,"You pressed Setting");
              }else if(value == "HomeValue"){
                showdialog(context,"You pressed Home");
              }
            },
            itemBuilder: (context) => [
              PopupMenuItem(
                  child:Row(
                    children: [
                      Icon(Icons.home),
                      SizedBox(width: 10,),
                      Text("home"),
                    ],
                  ) ,value: "HomeValue"),
              PopupMenuItem(
                child:Row(
                  children: [
                    Icon(Icons.settings),
                    SizedBox(width: 10,),
                    Text("Setting"),
                  ],
                ) ,value: "SettingValue"),

              ]
          )
        ]
      ),
    );
  }
}
