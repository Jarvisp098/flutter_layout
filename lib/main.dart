import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

/* class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Padding(
            padding: EdgeInsets.all(65),
            child: Text(
              'Flutter is awesome',
            style: TextStyle(color: Colors.blue, fontSize: 60,)),
          ),
        ),
      ),
    );
  }
} */

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar( 
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Home Page'),
              Icon(Icons.search,
              size: 40,),
            ],
          ),
          backgroundColor: Colors.blue,
        ),
        body: Placeholder(),
        drawer: Drawer(),
        bottomNavigationBar: const BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: Icon(Icons.home),
                onPressed: null,
                iconSize: 40,
              ),
              IconButton(
                icon: Icon(Icons.search),
                onPressed: null,
                iconSize: 40,
              ),
              IconButton(
                icon: Icon(Icons.settings),
                onPressed: null,
                iconSize: 40,
              )
            ],
          ),
        ),
      )
    );
  }
}