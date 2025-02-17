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
    apiKey: 'AIzaSyB73oCmk9XJq1q0SWj1OoZYCtN1zoZIVSo',
    appId: '1:374531034145:web:aec9f9bdacf5322b382760',
    messagingSenderId: '374531034145',
    projectId: 'quickbite-app-cd9f1',
    authDomain: 'quickbite-app-cd9f1.firebaseapp.com',
    storageBucket: 'quickbite-app-cd9f1.firebasestorage.app',
    measurementId: 'G-WQNH0D4HN4',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAqcZyXKrSi1QN6w3uWKoQJVj1JRHPaBH0',
    appId: '1:374531034145:android:eedbc0b3428229f5382760',
    messagingSenderId: '374531034145',
    projectId: 'quickbite-app-cd9f1',
    storageBucket: 'quickbite-app-cd9f1.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD9r55Nej6wehhRLKlC2ZzqmtkOGdKG65I',
    appId: '1:374531034145:ios:2540f602f65890c6382760',
    messagingSenderId: '374531034145',
    projectId: 'quickbite-app-cd9f1',
    storageBucket: 'quickbite-app-cd9f1.firebasestorage.app',
    iosBundleId: 'com.example.quickbite',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD9r55Nej6wehhRLKlC2ZzqmtkOGdKG65I',
    appId: '1:374531034145:ios:2540f602f65890c6382760',
    messagingSenderId: '374531034145',
    projectId: 'quickbite-app-cd9f1',
    storageBucket: 'quickbite-app-cd9f1.firebasestorage.app',
    iosBundleId: 'com.example.quickbite',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyB73oCmk9XJq1q0SWj1OoZYCtN1zoZIVSo',
    appId: '1:374531034145:web:5c4727129153f071382760',
    messagingSenderId: '374531034145',
    projectId: 'quickbite-app-cd9f1',
    authDomain: 'quickbite-app-cd9f1.firebaseapp.com',
    storageBucket: 'quickbite-app-cd9f1.firebasestorage.app',
    measurementId: 'G-RTC0CJPHMY',
  );
}
