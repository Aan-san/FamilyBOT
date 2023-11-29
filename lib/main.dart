import 'package:flutter/material.dart';
import 'Screens/Splash.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

Future main() async{
  // Initialize fire store
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}



class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(), // call splash screen
    );
  }

}