import 'dart:convert';

enum family_position { red, green, blue }

class User
{
  String userID;
  int phonenumber;
  String password;
  String? full_name;
  String? email;
  int?  age;
  family_position? position;
  String? familyID;

  User(
      { required this.userID,
        required this.phonenumber,
        required this.password,
        this.full_name,
        this.email,
        this.familyID,
        this.age,
        this.position,
        });

}