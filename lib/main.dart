import 'package:flutter/material.dart';
import 'package:fancy_bar/fancy_bar.dart';

int selectedIndex = 0;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key,});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int selectindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: FancyBottomBar(
        items: [
          FancyItem(
            textColor: Colors.white,
            title: 'Menu 1',
            icon: const Icon(Icons.home), fontSize: 14,
          ),
          FancyItem(
            textColor: Colors.white,
            title: 'Menu 2',
            icon: const Icon(Icons.trending_up), fontSize: 14,
          ),
          FancyItem(
            textColor: Colors.white,
            title: 'Menu 3',
            icon: const Icon(Icons.search), fontSize: 14,
          ),
          FancyItem(
            textColor: Colors.white,
            title: 'Menu 4',
            icon: const Icon(Icons.settings), fontSize: 14,
          ),
        ],
        onItemSelected: (index) {
          setState(() {
            selectindex = index;
          });
        },
      ),
      appBar: AppBar(
        centerTitle: true,

        title: const Text("Bottombar",style: TextStyle(fontSize: 15),),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            selectindex == 0 ? 
            const Text("Menu 1",style: TextStyle(fontSize: 30),) :
            selectindex == 1 ? 
            const Text("Menu 2",style: TextStyle(fontSize: 30)) :
            selectindex == 2 ? 
            const Text("Menu 3",style: TextStyle(fontSize: 30)) 
            :
            const Text("Menu 4",style: TextStyle(fontSize: 30))
          ],
        ),
      ),
    );
  }
}
