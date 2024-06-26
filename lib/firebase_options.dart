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
    apiKey: 'AIzaSyCN_yA6eHPUOY066JLbwXvXG4oLsI01HyU',
    appId: '1:851572079780:web:882b8c6a49c3c151b83a31',
    messagingSenderId: '851572079780',
    projectId: 'course-learning-app',
    authDomain: 'course-learning-app.firebaseapp.com',
    storageBucket: 'course-learning-app.appspot.com',
    measurementId: 'G-PY6GW3KBHK',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCiAQ52RiIsWIac1E5Lp6ymHbdLDzraxZw',
    appId: '1:851572079780:android:d61b3ed8eeb7a1d7b83a31',
    messagingSenderId: '851572079780',
    projectId: 'course-learning-app',
    storageBucket: 'course-learning-app.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBjj2oGK7UNmQjYmk7zaQ6jVbIcT5y2G2Y',
    appId: '1:851572079780:ios:274564dfbbc9c54fb83a31',
    messagingSenderId: '851572079780',
    projectId: 'course-learning-app',
    storageBucket: 'course-learning-app.appspot.com',
    iosBundleId: 'com.example.courseLearningApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBjj2oGK7UNmQjYmk7zaQ6jVbIcT5y2G2Y',
    appId: '1:851572079780:ios:274564dfbbc9c54fb83a31',
    messagingSenderId: '851572079780',
    projectId: 'course-learning-app',
    storageBucket: 'course-learning-app.appspot.com',
    iosBundleId: 'com.example.courseLearningApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCN_yA6eHPUOY066JLbwXvXG4oLsI01HyU',
    appId: '1:851572079780:web:bdf3972fee5f7d73b83a31',
    messagingSenderId: '851572079780',
    projectId: 'course-learning-app',
    authDomain: 'course-learning-app.firebaseapp.com',
    storageBucket: 'course-learning-app.appspot.com',
    measurementId: 'G-0VBN488L82',
  );
}
