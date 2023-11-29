import 'package:familybot/Models/user.dart';
import 'package:familybot/Screens/SignUp.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'Home.dart';

class LoginScreen extends StatefulWidget{
  const LoginScreen({Key? key}) : super(key : key);

  @override
  LoginScreenState createState() => LoginScreenState();

}

class LoginScreenState extends State<LoginScreen>{

  final phone     = TextEditingController();
  final password  = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    phone.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
   {
      return SafeArea(
        child: Scaffold(
          body: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    'assets/login.jpg',
                  ),
                  fit: BoxFit.cover),
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.1,
                  ),
                  const Icon(

                    Icons.calendar_month_rounded,
                    size: 90,
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.2,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: TextFormField(
                      style: const TextStyle(color: Colors.green),
                      decoration: const InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.greenAccent,
                            width: 3,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),

                        ),
                        hintText: 'phone number',
                        hintStyle: TextStyle(
                          color: Colors.greenAccent,
                          fontWeight: FontWeight.w800,
                        ),
                        icon: Icon(
                          Icons.phone_android_outlined,
                          color: Colors.greenAccent,
                        ),
                      ),
                      keyboardType: const TextInputType.numberWithOptions(),
                      validator: (String? input_value){
                          return (input_value != null && input_value.length !=10)
                                      ?'Input phone number again pls' : null;
                      },
                      controller: phone,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.04,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: TextFormField(
                      obscureText: true,
                      style: const TextStyle(color: Colors.green),
                      decoration: const InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.greenAccent,
                            width: 3,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                        hintText: 'password',
                        hintStyle: TextStyle(
                          color: Colors.greenAccent,
                          fontWeight: FontWeight.w800,
                        ),

                        icon: Icon(
                          Icons.lock_outline,
                          color: Colors.greenAccent,
                        ),
                      ),
                      controller: password,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.005,
                  ),

                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child :Row(
                      mainAxisAlignment:MainAxisAlignment.end ,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: Text('Forget Password',
                            style: TextStyle(
                                color: Colors.greenAccent,
                                fontSize: MediaQuery.of(context).size.width * 0.05,
                                fontWeight: FontWeight.w800
                            ),
                          ),
                        ),
                      ],
                    )
                  ),

                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),

                  // Sign Up Button
                  SizedBox(
                      width: MediaQuery.of(context).size.width * 0.9,
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                builder: (_)=> const SignUpScreen(),
                              ));
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.3,
                          padding: EdgeInsets.all(
                            MediaQuery.of(context).size.width * 0.02,
                          ),
                          decoration: const BoxDecoration(
                            color: Colors.greenAccent,
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'Sign Up',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: MediaQuery.of(context).size.width * 0.06,
                                  fontWeight: FontWeight.w800
                              ),
                            ),
                          ),
                        ),
                      ),

                        // LOGIN Button
                        SizedBox(width: MediaQuery.of(context).size.height * 0.03,),
                        GestureDetector(
                          onTap: () {
                            if(CheckLogin(phone.text,password.text)){
                              Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                    builder: (_)=> const HomeScreen(),
                                  ));
                            }
                            else
                            {
                              AlertDialog(
                                title: const Text('Login',
                                  style: TextStyle(
                                    color: Colors.green,
                                    fontWeight: FontWeight.w800,
                                  ),),
                                content: const SingleChildScrollView(
                                  child: ListBody(
                                    children: <Widget>[
                                      Text('This is a demo alert dialog.',
                                        style: TextStyle(
                                          color: Colors.green,
                                          fontWeight: FontWeight.w800,
                                        ),),
                                    ],
                                  ),
                                ),
                                actions: <Widget>[
                                  TextButton(
                                    child: const Text('Approve'),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                ],
                              );
                            }
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.5,
                            padding: EdgeInsets.all(
                              MediaQuery.of(context).size.width * 0.02,
                            ),
                            decoration: const BoxDecoration(
                              color: Colors.greenAccent,
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                'Login',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: MediaQuery.of(context).size.width * 0.06,
                                    fontWeight: FontWeight.w800
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],

                    )
                  )

                ],
              ),
            ),
          ),
        ),
      );
    }
  }
}

bool CheckLogin(String? phone , String? pass){

  bool check =false;
  FirebaseFirestore.instance
      .collection('users')
      .get()
      .then((QuerySnapshot querySnapshot) {
            querySnapshot.docs.forEach((doc) {
                if((doc['phonenumber'].toString() ==phone)
                  &&(doc['password'].toString() ==pass)){
                  check = true;
                }
                else{
                  check = false;
                }
            });
  });

  return check;
}