import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../auth/auth_page.dart';
import 'Home.dart';

class SplashScreen extends StatefulWidget{
  const SplashScreen({super.key});

  @override
  SplashScreenState createState() => SplashScreenState();

}

class SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin{
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    // set timer 5s for splash
    Future.delayed(const Duration(seconds: 5),(){
      // call login screen
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (_)=>  Auth_Page(),
          ));

    });
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,overlays: SystemUiOverlay.values);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Container(
      // Add background
      decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/splash.jpg',),
            fit: BoxFit.cover,
          ),
      ),
      child: const Scaffold(
        backgroundColor: Colors.transparent,
        body: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.calendar_month_rounded,
                size: 90,
                color: Colors.white,
              ),
              SizedBox(height: 20),
              Text(
                "FamilyBOT",
                style: TextStyle(fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.italic,
                  fontSize: 40,
                  color: Colors.white,),
              )
            ],
          ),
        ),
      ),
    );
  }
}


