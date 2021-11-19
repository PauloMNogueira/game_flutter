import 'package:doleiro_flutter/Screens/Political_Parties/create_political_party_screen.dart';
import 'package:doleiro_flutter/Screens/home_screen.dart';
import 'package:doleiro_flutter/Screens/welcome_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const DoleiroApp());

class DoleiroApp extends StatelessWidget {
  const DoleiroApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      title: 'Welcome to Flutter',
      initialRoute: "/welcome",
      routes: {
        "/": (context) => const HomeScreen(),
        "/welcome": (context) => const WelcomeScreen(),
        "/political_parties/create": (context) => CreatePolitiacalParty()
      },
    );
  }
}
