import 'package:flutter/material.dart';
import 'package:practice1_fluuter/pages/splash_screen.dart';
import 'package:provider/provider.dart';

import 'model/provider_products.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ProductProvider(),
      child: MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.white,
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: "/splashscreen",
        routes: {
          '/splashscreen' :(context) => SplashScreen(),
        },
      ),
    );
  }
  }

