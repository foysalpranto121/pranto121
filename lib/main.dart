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
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: const MyHomePage(title: 'Shopno Travels'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final String myImage =
      'https://images.unsplash.com/photo-1507525428034-b723cf961d3e';
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    String tittle = 'Beautiful Bangladesh';
    return Scaffold(
        appBar: AppBar(
          elevation: 11,
          leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))],
          title: Text(widget.title),
        ),
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              pinned: true,
              floating: false,
              expandedHeight: 250.0,
              flexibleSpace: FlexibleSpaceBar(
                title: Text(tittle,
                    style: TextStyle(
                      color: Colors.blueAccent,
                      fontSize: 15,
                      fontWeight: FontWeight.w300,
                    )),
                background: Image.network(
                  myImage,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SliverList(
                delegate: SliverChildListDelegate([
              Card(
                child: Container(
                  height: 200,
                  width: double.infinity,
                  color: Colors.lightBlueAccent,
                ),
              ),
              Card(
                child: Container(
                  height: 200,
                  width: double.infinity,
                  color: Colors.greenAccent,
                ),
              ),
              Card(
                child: Container(
                  height: 200,
                  width: double.infinity,
                  color: Colors.lightGreenAccent,
                ),
              ),
            ]))
          ],
        ));
  }
}
