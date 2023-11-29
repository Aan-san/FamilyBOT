import 'package:familybot/Models/user.dart';
import 'package:firebase_core/firebase_core.dart';
import '../firebase_options.dart';

class LoginRepository {
  List<User>? list_user;

  LoginRepository(){
    Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );

    //FirebaseFirestore firestore = FirebaseFirestore.instance;

  }

}

