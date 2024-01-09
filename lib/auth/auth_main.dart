import 'package:familybot/Screens/Splash.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../Screens/Home.dart';

class Main_Page extends StatelessWidget {
  const Main_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return const HomeScreen();
          }
          else {
            return const SplashScreen();
          }
        },
      ),
    );
  }
}
