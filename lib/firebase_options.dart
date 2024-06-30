// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyDgMP9KgglL5C0vx-Ucqx88q5PF6WMuB4s',
    appId: '1:547873059366:web:906a640e27f33aa34b2ce7',
    messagingSenderId: '547873059366',
    projectId: 'marketplace-app-20240630',
    authDomain: 'marketplace-app-20240630.firebaseapp.com',
    storageBucket: 'marketplace-app-20240630.appspot.com',
    measurementId: 'G-0G7CS1523T',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBxbJ61w2ElsesxjJ1TWDmYqgQePJYjBVw',
    appId: '1:547873059366:android:816afe0bbb0422554b2ce7',
    messagingSenderId: '547873059366',
    projectId: 'marketplace-app-20240630',
    storageBucket: 'marketplace-app-20240630.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA8oPiUNY_SWfWFm790ypbBSdjA_Tz3rTs',
    appId: '1:547873059366:ios:fc35c65c5bd68d874b2ce7',
    messagingSenderId: '547873059366',
    projectId: 'marketplace-app-20240630',
    storageBucket: 'marketplace-app-20240630.appspot.com',
    iosBundleId: 'com.example.marketPlaceApp',
  );
}
