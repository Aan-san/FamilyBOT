import 'package:flutter/material.dart';
import '../Repository/UserRepo.dart';
import 'Home.dart';
import 'SignUp.dart';


class UserScreen extends StatefulWidget{
  const UserScreen({Key? key}) : super(key : key);

  @override
  UserScreenState createState() => UserScreenState();

}

class UserScreenState extends State<UserScreen> {

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Column(
        children: [
        ],
      ),
    );
  }

}

