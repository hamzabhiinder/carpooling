import 'package:carpooling_app/screen/auth_screens/splash_screen.dart';
import 'package:carpooling_app/screen/user_screen.dart';
import 'package:flutter/material.dart';
import 'package:carpooling_app/screen/auth_screens/login_screen.dart';
import 'package:carpooling_app/screen/home_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IoBMaxRide',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
     
      initialRoute: '/splash',
      routes: {
        '/login': (context) => LoginScreen(
              userType: '',
            ),
        '/home': (context) => HomeScreen(),
        '/splash': (context) => SplashScreen(),
        '/user': (context) => UserSelectionScreen(),
      },
    );
  }
}
