import 'package:familybot/Repository/UserRepo.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import '../Models/user.dart';
import 'Login.dart';

class SignUpScreen extends StatefulWidget{
  final VoidCallback show;
  SignUpScreen(this.show, {super.key});

  @override
  SignUpScreenState createState() => SignUpScreenState();

}

class SignUpScreenState extends State<SignUpScreen>{
  // Create text box variable
  final email     = TextEditingController();
  final password     = TextEditingController();
  final repassword  = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    email.dispose();
    password.dispose();
    repassword.dispose();
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
                    'assets/SignUpBG.jpg',
                  ),
                  fit: BoxFit.cover),
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // SPACE
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.1,
                  ),

                  // TILTE
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                       Text(
                      'Create',
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width * 0.1,
                          color: Colors.white,
                          fontWeight: FontWeight.w800,
                        ),
                    ),
                        Text(
                          'Account',
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * 0.1,
                            color: Colors.white,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ],
                    ),
                  ),

                  // SPACE
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.2,
                  ),

                  // EMAIL BOX
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
                        hintText: 'email',
                        hintStyle: TextStyle(
                          color: Colors.greenAccent,
                          fontWeight: FontWeight.w800,
                        ),
                        icon: Icon(
                          Icons.phone_android_outlined,
                          color: Colors.greenAccent,
                        ),
                      ),
                      validator: (String? input_value){
                        return (input_value != null)
                            ?'Input email pls' : null;
                      },
                      controller: email,
                    ),
                  ),

                  // SPACE
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.04,
                  ),

                  // PASSWORD BOX
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

                  // SPACE
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.004,
                  ),

                  // REPASSWORD BOX
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
                        hintText: 'confirm password',
                        hintStyle: TextStyle(
                          color: Colors.greenAccent,
                          fontWeight: FontWeight.w800,
                        ),

                        icon: Icon(
                          Icons.lock_outline,
                          color: Colors.greenAccent,
                        ),
                      ),
                      controller: repassword,
                    ),
                  ),

                  // SPACE
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.005,
                  ),

                  // BUTTON FORGET
                  SizedBox(
                      width: MediaQuery.of(context).size.width * 0.9,
                      child :Row(
                        mainAxisAlignment:MainAxisAlignment.end ,
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: Text('Forget Password',
                              style: TextStyle(
                                  color: Colors.red,
                                  fontSize: MediaQuery.of(context).size.width * 0.05,
                                  fontWeight: FontWeight.w800
                              ),
                            ),
                          ),
                        ],
                      )
                  ),

                  // SPACE
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),

                  // BUTTON SIGN UP
                  SizedBox(
                      width: MediaQuery.of(context).size.width * 0.9,
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                            onTap: () {
                              widget.show;
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
                                  'Back',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: MediaQuery.of(context).size.width * 0.06,
                                      fontWeight: FontWeight.w800
                                  ),
                                ),
                              ),
                            ),
                          ),

                          SizedBox(width: MediaQuery.of(context).size.height * 0.03,),

                          GestureDetector(
                            onTap: () {
                              AuthenticationRemote()
                                  .register(email.text, password.text, repassword.text);

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
