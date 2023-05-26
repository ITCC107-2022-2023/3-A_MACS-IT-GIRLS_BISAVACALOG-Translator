import 'package:bisavacalog/components/menu_drawer.dart';
import 'package:bisavacalog/screens/home_screen/components/home_screen_body.dart';
import 'package:bisavacalog/size_config.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      drawer: MenuDrawer(),
      appBar: AppBar(
        title: Text('Bisavacalog'),
      ),
      body: const HomeScreenBody(),
    );
  }
}
