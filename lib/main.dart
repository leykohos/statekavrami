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
      title: 'Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Set State Kavramını Öğrenmek'),
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
  int _counter = 0;
  int checker = 0;
  String? value;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inverseSurface,

        title: Text(widget.title),
      ),
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              'Bloklar',
              style: TextStyle(
                color: Colors.red,
                fontSize: 50,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.hourglass_empty,
                  color: Colors.white70,
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.home_outlined,
                  color: Colors.indigo,
                ),
                ElevatedButton(
                  onPressed: checker == 0 ? () {
                    setState(() {
                      value = "A BLOK";
                      checker = 1;
                    });
                  } : null,
                  child: Text(
                    "A BLOK",
                    style: Theme.of(context).textTheme.displaySmall,
                  ),

                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.hourglass_empty,
                  color: Colors.white70,
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.home_outlined,
                  color: Colors.yellow,
                ),
                ElevatedButton(
                  onPressed:checker == 1 ? () {
                    setState(() {
                      value = "B BLOK";
                      checker = 0;
                    });
                  }: null,
                  child: Text(
                    "B BLOK",
                    style: Theme.of(context).textTheme.displaySmall,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "TIKLANAN BUTON $value",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 30,
                  ),

                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
