import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../Repository/UserRepo.dart';
import '../widgets/note_list.dart';
import 'Note_Screen.dart';
import 'User_Screen.dart';

class HomeScreen extends StatefulWidget{
  const HomeScreen({Key? key}) : super(key : key);

  @override
  HomeScreenState createState() => HomeScreenState();
}

enum MenuItem{
  profile_selection,
  signout_selection
}
bool show = true;
void Change(){

}

class HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FamilyBOT",
          style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w800
          ),),
        backgroundColor: Colors.greenAccent,
        actions: [
                PopupMenuButton<MenuItem>(
                  icon: Image.asset("assets/icons8-user.png"),
                  onSelected:(value){
                    if(value == MenuItem.profile_selection){
                      Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (_)=>  const UserScreen(),
                          ));
                    }
                    else if(value == MenuItem.signout_selection){
                      AuthenticationRemote().signOut();
                    }
                  } ,
                  itemBuilder: (context) =>[
                  const PopupMenuItem(
                    value: MenuItem.profile_selection,
                    child: Text("Profile"),
                  ),

                  const PopupMenuItem(
                    value: MenuItem.signout_selection,
                    child: Text("Sign Out"),
                  ),
                ]
              ),
            ],
      ),

      backgroundColor: Colors.white,

      floatingActionButton: Visibility(
        visible: show,
        child: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const Add_creen(),
            ));
          },
          backgroundColor: Colors.green,
          child: const Icon(Icons.add, size: 30),
        ),
      ),


      body: Container(
        alignment: Alignment.bottomLeft,
        child: NotificationListener<UserScrollNotification>(
          onNotification: (notification) {
            if (notification.direction == ScrollDirection.forward) {
              setState(() {
                show = true;
              });
            }
            if (notification.direction == ScrollDirection.reverse) {
              setState(() {
                show = false;
              });
            }
            return true;
          },
          child: Column(
            children: [
              Stream_note(false),
              Text(
                'isDone',
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey.shade500,
                    fontWeight: FontWeight.bold),
              ),
              Stream_note(true),
              SizedBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
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
                            'Calendar',
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
              ),
          ]
        ),)
      ),
    );
  }
}