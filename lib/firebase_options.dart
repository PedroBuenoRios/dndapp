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
    apiKey: 'AIzaSyAWUl4wOg4JPdnxUVRej96vo9fh1eWbGvk',
    appId: '1:274486207417:web:1e26cd8392d580978dcc68',
    messagingSenderId: '274486207417',
    projectId: 'dnd-app-cc37x',
    authDomain: 'dnd-app-cc37x.firebaseapp.com',
    storageBucket: 'dnd-app-cc37x.appspot.com',
    measurementId: 'G-Y33ZHT2V5K',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA1AitcWoyaduKKzd6w64rWnQUtsdqcmtw',
    appId: '1:274486207417:android:ede90931397944f88dcc68',
    messagingSenderId: '274486207417',
    projectId: 'dnd-app-cc37x',
    storageBucket: 'dnd-app-cc37x.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBEkz4ISeQTWGYeKvaWUFboHKOOrRH4Nek',
    appId: '1:274486207417:ios:7169ea2a5f1ccff18dcc68',
    messagingSenderId: '274486207417',
    projectId: 'dnd-app-cc37x',
    storageBucket: 'dnd-app-cc37x.appspot.com',
    iosBundleId: 'com.example.dndapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBEkz4ISeQTWGYeKvaWUFboHKOOrRH4Nek',
    appId: '1:274486207417:ios:7169ea2a5f1ccff18dcc68',
    messagingSenderId: '274486207417',
    projectId: 'dnd-app-cc37x',
    storageBucket: 'dnd-app-cc37x.appspot.com',
    iosBundleId: 'com.example.dndapp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAWUl4wOg4JPdnxUVRej96vo9fh1eWbGvk',
    appId: '1:274486207417:web:598eeeaaa1039fd28dcc68',
    messagingSenderId: '274486207417',
    projectId: 'dnd-app-cc37x',
    authDomain: 'dnd-app-cc37x.firebaseapp.com',
    storageBucket: 'dnd-app-cc37x.appspot.com',
    measurementId: 'G-CQQX9QQZYM',
  );

}