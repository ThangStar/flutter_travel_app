import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_app/blocs/near_me/near_me_bloc.dart';
import 'package:travel_app/config/font/text_theme.dart';
import 'package:travel_app/config/theme/color_schemes.dart';
import 'package:travel_app/blocs/home/home_bloc.dart';
import 'package:travel_app/screens/bottom_nav_main/bottom_nav_main.dart';
import 'package:travel_app/screens/bottom_nav_main/home/home_screen.dart';
import 'package:travel_app/screens/bottom_nav_main/near_me/near_me_screen.dart';

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
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => HomeBloc(),
        ),
        BlocProvider(
          create: (context) => NearMeBloc(),
        ),
      ],
      child: MaterialApp(
        initialRoute: "/",
        routes: {
          "/": (context) => const BottomNavMain(),
          "/location": (context) => const NearMeScreen()
        },
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
            useMaterial3: true,
            colorScheme: isDarkTheme ? darkColorScheme : lightColorScheme,
            textTheme: textTheme),
        darkTheme: ThemeData(useMaterial3: true, colorScheme: darkColorScheme),
        //   home: MyHomePage(
        //       title: 'Flutter Demo Home Page',
        //       callbackAction: _incrementCounter,
        //       isDarkTheme: isDarkTheme),
        // );
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage(
      {super.key,
      required this.title,
      required this.callbackAction,
      required this.isDarkTheme});

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
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
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
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Card(
              child:
                  Container(padding: EdgeInsets.all(12), child: Text("hello")),
            ),
            Container(
              width: 200,
              height: 200,
              child: Center(child: Container(width: 50, height: 50)),
            ),
            TapRegionSurface(
                child: Container(
              color: Theme.of(context).cardColor,
              width: 100,
              height: 100,
            ))
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
