// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCmXoyONn04iaLn1eFGq34lw2l9FplfIUQ',
    appId: '1:778857361651:web:6b21659dd6d22c0d570786',
    messagingSenderId: '778857361651',
    projectId: 'familybot-7f30f',
    authDomain: 'familybot-7f30f.firebaseapp.com',
    storageBucket: 'familybot-7f30f.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCtM8FRDsMLzAMs3xJU0_MJsDU3kCuy_Sk',
    appId: '1:778857361651:android:dbd5572893dfb570570786',
    messagingSenderId: '778857361651',
    projectId: 'familybot-7f30f',
    authDomain: 'familybot-7f30f.firebaseapp.com',
    storageBucket: 'familybot-7f30f.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDc8q9gJ6cb-xXO9UAp_zmrrcUsqiRxuxk',
    appId: '1:778857361651:ios:5c3811de5749fcdf570786',
    messagingSenderId: '778857361651',
    projectId: 'familybot-7f30f',
    storageBucket: 'familybot-7f30f.appspot.com',
    authDomain: 'familybot-7f30f.firebaseapp.com',
    iosBundleId: 'com.familybot.familybot',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDc8q9gJ6cb-xXO9UAp_zmrrcUsqiRxuxk',
    appId: '1:778857361651:ios:b664b2ac224b5277570786',
    messagingSenderId: '778857361651',
    projectId: 'familybot-7f30f',
    storageBucket: 'familybot-7f30f.appspot.com',
    iosBundleId: 'com.familybot.familybot.RunnerTests',
    authDomain: 'familybot-7f30f.firebaseapp.com',
  );
}
