import 'package:bisavacalog/screens/favourite_screen/favourite_screen.dart';
import 'package:bisavacalog/screens/feedback_screen/feedback_screen.dart';
import 'package:bisavacalog/screens/history_screen/history_screen.dart';
import 'package:bisavacalog/screens/home_screen/home_screen.dart';
import 'package:bisavacalog/screens/policy_screen/policy_screen.dart';
import 'package:bisavacalog/screens/result_screen/results_screen.dart';
import 'package:flutter/material.dart';
import 'package:bisavacalog/screens/init_screen/init_screen.dart';

final Map<String, WidgetBuilder> routes = {
  InitialScreen.routeName: (context) => const InitialScreen(),
  HomeScreen.routeName: (context) => const HomeScreen(),
  PolicyScreen.routeName: (context) => const PolicyScreen(),
  FavouriteScreen.routeName: (context) => const FavouriteScreen(),
  HistoryScreen.routeName: (context) => const HistoryScreen(),
  FeedbackScreen.routeName: (context) => const FeedbackScreen(),
  ResultScreen.routeName: (context) => const ResultScreen(),
};
