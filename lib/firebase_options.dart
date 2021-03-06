// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars
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
    // ignore: missing_enum_constant_in_switch
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
    }

    throw UnsupportedError(
      'DefaultFirebaseOptions are not supported for this platform.',
    );
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyAdv7YUv-bl588B2EsPSqp8YpXU7jXiFaw',
    appId: '1:282555915868:web:034e89120b67d8c36b9099',
    messagingSenderId: '282555915868',
    projectId: 'gratefulness-17ad3',
    authDomain: 'gratefulness-17ad3.firebaseapp.com',
    storageBucket: 'gratefulness-17ad3.appspot.com',
    measurementId: 'G-M5ZXTB1214',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAW7rOB1wX-wl8AR8dDtINpin7baFe_pY8',
    appId: '1:282555915868:android:0fff018e4ec9b9c16b9099',
    messagingSenderId: '282555915868',
    projectId: 'gratefulness-17ad3',
    storageBucket: 'gratefulness-17ad3.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBwhv2laQ1tinyCvpB5zM9jNnEv-kaRYMo',
    appId: '1:282555915868:ios:47503f07323972526b9099',
    messagingSenderId: '282555915868',
    projectId: 'gratefulness-17ad3',
    storageBucket: 'gratefulness-17ad3.appspot.com',
    iosClientId: '282555915868-so5ilj626lfj6l44ftatocs56fdgbnq2.apps.googleusercontent.com',
    iosBundleId: 'com.jaroslawgawlik.gratefulness',
  );
}
