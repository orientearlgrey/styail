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
    apiKey: 'AIzaSyCYMOr25bLqLDYQ7229QKkS-qsVHjMf8Dc',
    appId: '1:605812453080:web:53fc64c7202c128cf1f1ad',
    messagingSenderId: '605812453080',
    projectId: 'styail',
    authDomain: 'styail.firebaseapp.com',
    storageBucket: 'styail.appspot.com',
    measurementId: 'G-YTBWSRSSL4',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDCZ7-t2whgvPPhXWFN0zcdxwi542_tICg',
    appId: '1:605812453080:android:42bb7303071653d0f1f1ad',
    messagingSenderId: '605812453080',
    projectId: 'styail',
    storageBucket: 'styail.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCC9_DlTbjLa4zvTYXzVi4YYhTq8OrB9UM',
    appId: '1:605812453080:ios:b0dd8b51e24b3482f1f1ad',
    messagingSenderId: '605812453080',
    projectId: 'styail',
    storageBucket: 'styail.appspot.com',
    iosBundleId: 'systems.perceptual.styail',
  );
}
