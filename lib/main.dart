import 'package:firebase_auth/firebase_auth.dart';
import 'components/custom_form.dart';
import 'components/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'components/init.dart';
import 'package:logger/logger.dart';
import 'components/pages/home_page.dart';

var logger = Logger(
  printer: PrettyPrinter(),
);

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialize();
  runApp(MaterialApp(
    home: HomePage(),
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

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
    );
  }
}
