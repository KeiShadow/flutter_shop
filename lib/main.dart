import 'package:flutter/material.dart';
import 'package:flutter_shop/screens/Dashboard.dart';
import 'package:getwidget/getwidget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: GFAppBar(
          elevation: 0.0,
          backgroundColor: Colors.white,
          title: const Text(
            "Shop",
            style: TextStyle(color: GFColors.DARK),
          ),
          actions: [
            GFIconButton(
              padding: const EdgeInsets.only(right: 20.0),
              icon: const Icon(
                Icons.shopping_basket_outlined,
                color: Colors.black87,
              ),
              onPressed: () {},
              type: GFButtonType.transparent,
            ),
            GFIconButton(
              padding: const EdgeInsets.only(right: 20.0),
              icon: const Icon(
                Icons.person_outline,
                color: Colors.black87,
              ),
              onPressed: () {},
              type: GFButtonType.transparent,
            ),
          ],
        ),
        body: const Dashboard());
  }
}
