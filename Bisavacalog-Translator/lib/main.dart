import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'theme.dart';
import 'routes.dart';

Future main() async {
  ///Ensure that this function to initialize before widget to be built
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown
  ]); // Only portrait orientation

  Widget app = MaterialApp(
      debugShowCheckedModeBanner: false, // Hide the [Debug Sign] in debug app.
      title: 'Bisavacalog',
      theme: theme(),
      routes: routes, //Routes for navigating screens.
      initialRoute: '/init');
  runApp(app);
}
