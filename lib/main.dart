import 'package:flutter/material.dart';
import 'package:sirius2024_mobile/app_logo.dart';
import 'package:sirius2024_mobile/search.dart';
import 'package:sirius2024_mobile/promo_banner.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sirius 2024',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0x00fea300)),
        fontFamily: 'Mont',
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      resizeToAvoidBottomInset: true,
      body:   SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(vertical: 100),
                child: AppLogo(),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Search(),
              ),
              Padding(
                  padding: EdgeInsets.all(20),
                  child: PromoBanner()
              )
            ],
          ),
        ),
      ),
    );
  }
}
