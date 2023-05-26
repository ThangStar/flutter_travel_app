import 'package:flutter/material.dart';
import 'package:travel_app/config/theme/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isDarkTheme = false;

  void _incrementCounter() {
    print('call back here!');
    setState(() {
      isDarkTheme = !isDarkTheme;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: isDarkTheme ? darkTheme : lightTheme,
      home: MyHomePage(
          title: 'Flutter Demo Home Page',
          callbackAction: _incrementCounter,
          isDarkTheme: isDarkTheme
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage(
      {super.key, required this.title, required this.callbackAction, required this.isDarkTheme});

  final String title;
  final VoidCallback callbackAction;
  final bool isDarkTheme;


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme
            .of(context)
            .colorScheme
            .inversePrimary,
        title: Text("this is app bar"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '${widget.isDarkTheme}',
              style: Theme
                  .of(context)
                  .textTheme
                  .headlineMedium,
            ),
            Container(
              color: Theme.of(context).colorScheme.surface,
              width: 200,
              height: 200,
              child: Center(child: Container(width: 50, height: 50, color: Theme.of(context).colorScheme.onSurface, )),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: widget.callbackAction,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
