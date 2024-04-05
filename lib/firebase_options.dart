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
    apiKey: 'AIzaSyDpmXdv5vRr1fqLI_DIhfU0ew-ICN9zQW8',
    appId: '1:282372354180:web:8c24fc6eb285d5833a92d1',
    messagingSenderId: '282372354180',
    projectId: 'zoom-clone-2f1ad',
    authDomain: 'zoom-clone-2f1ad.firebaseapp.com',
    storageBucket: 'zoom-clone-2f1ad.appspot.com',
    measurementId: 'G-FCZPTSN4HW',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBchgFzBlTbE--6GqA06oJITVSIPuf-tsM',
    appId: '1:282372354180:android:6d046a20dda4a3883a92d1',
    messagingSenderId: '282372354180',
    projectId: 'zoom-clone-2f1ad',
    storageBucket: 'zoom-clone-2f1ad.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAHLujsxMOBczxpXgGdQLAo05mldxjxOXM',
    appId: '1:282372354180:ios:a76ab1bf6cba209e3a92d1',
    messagingSenderId: '282372354180',
    projectId: 'zoom-clone-2f1ad',
    storageBucket: 'zoom-clone-2f1ad.appspot.com',
    iosBundleId: 'com.madhav.scuttle',
  );
}