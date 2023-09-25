import 'package:flutter/material.dart';
import 'package:sehpathi/Screens/Auth/login_page.dart';
import 'package:sehpathi/Screens/Auth/signup_otp.dart';
import 'package:sehpathi/Screens/Auth/signup_page.dart';
import 'package:sehpathi/Screens/Club/club.dart';
import 'package:sehpathi/Screens/Course/all_courses.dart';
import 'package:sehpathi/Screens/Store/reward_store.dart';
import 'package:sehpathi/Screens/User/main_profile.dart';
import 'package:sehpathi/Screens/User/user_profile.dart';
import 'package:sehpathi/Screens/home_page.dart';

void main() {
  runApp(const Sehpathi());
}

class Sehpathi extends StatelessWidget {
  const Sehpathi({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sehpathi',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginPage(),
        '/signup': (context) => const SignupPage(),
        '/verification': (context) => const SignupOtp(),
        '/home': (context) => const HomePage(),
        '/login': (context) => const LoginPage(),
        '/profile': (context) => const Profile(),
        '/courses': (context) => const AllCourses(),
        '/user/profile': (context) => const UserProfile(),
        '/store': (context) => const Reward(),
        '/club': (context) => const Club(),
      },
    );
  }
}
