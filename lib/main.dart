import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quickbite/firebase_options.dart';
import 'package:quickbite/models/restaurant.dart';
import 'package:quickbite/services/auth/auth_gate.dart';
import 'package:quickbite/themes/theme_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(
   MultiProvider(providers: [
     ChangeNotifierProvider(create: (context)=> ThemeProvider()),
     ChangeNotifierProvider(create: (context)=> Restaurant()),
   ],
     child: const MyApp(),
   ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const AuthGate(),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}
