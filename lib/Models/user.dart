import 'dart:convert';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

enum family_position { red, green, blue }

class User
{
  String? userID;
  int phonenumber;
  String password;
  String? full_name;
  String? email;
  int?  age;
  family_position? role;
  String? familyID;

  User(
      { this.userID,
        required this.phonenumber,
        required this.password,
        this.full_name,
        this.email,
        this.familyID,
        this.age,
        this.role,
        });

  ToJson(){
      return{
        "phone_number": phonenumber,
        "password": password,
        "full_name": full_name,
        "email": email,
        "familyID": familyID,
        "age": age,
        "role": role,
      };
  }

  factory User.fromSnapshot(DocumentSnapshot<Map<String,dynamic>> documentSnapshot){

    final data  = documentSnapshot.data()!;

    return User(
      userID:documentSnapshot.id,
      phonenumber:data["phone_number"],
      password:data["password"],
      full_name:data["full_name"],
      familyID:data["familyID"],
      email:data["email"],
      age:data["age"],
      role:data["role"],

    );
  }

}