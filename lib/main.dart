import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'components/home_page_folder/home_soldier_page.dart';

var logger = Logger(
  printer: PrettyPrinter(),
);

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //await initialize();
  runApp(MaterialApp(
    home: HomeSoldierPage(),
  ));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "Roboto"),
    );
  }
}

