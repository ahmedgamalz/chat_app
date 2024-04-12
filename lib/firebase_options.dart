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
    apiKey: 'AIzaSyAc2nrPZeiM-GmDCt_08n0keXSW1Q97s7o',
    appId: '1:764992914985:web:119591ba81f3cbb36d3e38',
    messagingSenderId: '764992914985',
    projectId: 'chat-app-7fb58',
    authDomain: 'chat-app-7fb58.firebaseapp.com',
    storageBucket: 'chat-app-7fb58.appspot.com',
    measurementId: 'G-3H2ZBNYSTM',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC_HmFPynvPSmRKcVayj6cRKJ9arFOGoUI',
    appId: '1:764992914985:android:93f8293e28d3655b6d3e38',
    messagingSenderId: '764992914985',
    projectId: 'chat-app-7fb58',
    storageBucket: 'chat-app-7fb58.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA-yP3ubP1mj0WStWQiVH_lOQUq1RuqC8c',
    appId: '1:764992914985:ios:e29d4079c144765c6d3e38',
    messagingSenderId: '764992914985',
    projectId: 'chat-app-7fb58',
    storageBucket: 'chat-app-7fb58.appspot.com',
    iosBundleId: 'com.example.chatApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA-yP3ubP1mj0WStWQiVH_lOQUq1RuqC8c',
    appId: '1:764992914985:ios:e29d4079c144765c6d3e38',
    messagingSenderId: '764992914985',
    projectId: 'chat-app-7fb58',
    storageBucket: 'chat-app-7fb58.appspot.com',
    iosBundleId: 'com.example.chatApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAc2nrPZeiM-GmDCt_08n0keXSW1Q97s7o',
    appId: '1:764992914985:web:db35120315fe76406d3e38',
    messagingSenderId: '764992914985',
    projectId: 'chat-app-7fb58',
    authDomain: 'chat-app-7fb58.firebaseapp.com',
    storageBucket: 'chat-app-7fb58.appspot.com',
    measurementId: 'G-Q1M47XQQXW',
  );

}