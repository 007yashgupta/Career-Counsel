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
        return macos;
      case TargetPlatform.windows:
        return windows;
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
    apiKey: 'AIzaSyBKp6Kh48cKVAEqP4lLizJL4k4Xbn2i1yE',
    appId: '1:135504852755:web:12d2a29765c9ba358bcce6',
    messagingSenderId: '135504852755',
    projectId: 'career-counsel-85077',
    authDomain: 'career-counsel-85077.firebaseapp.com',
    databaseURL: 'https://career-counsel-85077-default-rtdb.firebaseio.com',
    storageBucket: 'career-counsel-85077.appspot.com',
    measurementId: 'G-542ESFZ4Z4',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCfTLu3YUSHFbV4NxH8kcNQMEUygCyQI1w',
    appId: '1:135504852755:android:c41a3470c115165e8bcce6',
    messagingSenderId: '135504852755',
    projectId: 'career-counsel-85077',
    databaseURL: 'https://career-counsel-85077-default-rtdb.firebaseio.com',
    storageBucket: 'career-counsel-85077.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCUVvRUoF-JobRNnlN6lQNVtne3qivgfxU',
    appId: '1:135504852755:ios:5d01ee97434f8da18bcce6',
    messagingSenderId: '135504852755',
    projectId: 'career-counsel-85077',
    databaseURL: 'https://career-counsel-85077-default-rtdb.firebaseio.com',
    storageBucket: 'career-counsel-85077.appspot.com',
    iosBundleId: 'com.example.careerCounsel',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCUVvRUoF-JobRNnlN6lQNVtne3qivgfxU',
    appId: '1:135504852755:ios:5d01ee97434f8da18bcce6',
    messagingSenderId: '135504852755',
    projectId: 'career-counsel-85077',
    databaseURL: 'https://career-counsel-85077-default-rtdb.firebaseio.com',
    storageBucket: 'career-counsel-85077.appspot.com',
    iosBundleId: 'com.example.careerCounsel',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBKp6Kh48cKVAEqP4lLizJL4k4Xbn2i1yE',
    appId: '1:135504852755:web:5e4fa6dcc9e18ad78bcce6',
    messagingSenderId: '135504852755',
    projectId: 'career-counsel-85077',
    authDomain: 'career-counsel-85077.firebaseapp.com',
    databaseURL: 'https://career-counsel-85077-default-rtdb.firebaseio.com',
    storageBucket: 'career-counsel-85077.appspot.com',
    measurementId: 'G-KMJN3CJ51Z',
  );

}