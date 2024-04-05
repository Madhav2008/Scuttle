import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:scuttle/providers/user_provider.dart';
import 'package:scuttle/responsive/mobile_screen_layout.dart';
import 'package:scuttle/responsive/responsive_layout.dart';
import 'package:scuttle/responsive/web_screen_layout.dart';
import 'package:scuttle/screens/login_screen.dart';
import 'package:scuttle/utils/colors.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // initialise app based on platform- web or mobile
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: "AIzaSyDpmXdv5vRr1fqLI_DIhfU0ew-ICN9zQW8",
        appId: "1:282372354180:web:8c24fc6eb285d5833a92d1",
        messagingSenderId: "282372354180",
        projectId: "zoom-clone-2f1ad",
        storageBucket: 'zoom-clone-2f1ad.appspot.com',
      ),
    );
  } else {
    await Firebase.initializeApp();
  }
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => UserProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Scuttle',
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: mobileBackgroundColor,
        ),
        home: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.active) {
              // Checking if the snapshot has any data or not
              if (snapshot.hasData) {
                // if snapshot has data which means user is logged in then we check the width of screen and accordingly display the screen layout
                return const ResponsiveLayout(
                  mobileScreenLayout: MobileScreenLayout(),
                  webScreenLayout: WebScreenLayout(),
                );
              } else if (snapshot.hasError) {
                return Center(
                  child: Text('${snapshot.error}'),
                );
              }
            }

            // means connection to future hasnt been made yet
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: Image.asset(
                  'assets/load.gif',
                  width: 200,
                  height: 200,
                ),
              );
            }

            return const LoginScreen();
          },
        ),
      ),
    );
  }
}
