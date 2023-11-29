import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget{
  const HomeScreen({Key? key}) : super(key : key);

  @override
  HomeScreenState createState() => HomeScreenState();

}

class HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    {
      return SafeArea(
          child: Scaffold(
          backgroundColor: Colors.greenAccent,
          appBar: AppBar(
            title: const Text("Homepage",
                      style: TextStyle(fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w700),
                      ),
            backgroundColor: Colors.green,
          ),
            body: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Homepage",
                  style: TextStyle(fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w700),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
      )
      );
    }
  }
}