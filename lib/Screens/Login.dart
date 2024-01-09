import 'package:flutter/material.dart';
import '../Repository/UserRepo.dart';
import 'Home.dart';
import 'SignUp.dart';


class LoginScreen extends StatefulWidget{
  const LoginScreen({Key? key}) : super(key : key);

  @override
  LoginScreenState createState() => LoginScreenState();

}

class LoginScreenState extends State<LoginScreen>{

  final email     = TextEditingController();
  final password  = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    email.dispose();
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
                                      ?'Input email again pls' : null;
                      },
                      controller: email,
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
                                builder: (_)=>  const SignUpScreen(),
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
                          onTap: () async {
                            AuthenticationRemote().login(email.text, password.text);
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
