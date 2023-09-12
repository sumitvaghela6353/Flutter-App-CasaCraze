import 'package:flutter/material.dart';
// import 'package:furniture_ar/prod3.dart';
import 'package:furniture_ar/signin.dart';
import 'ChangePassword.dart';
import 'Editprofile.dart';
import 'Firstpage.dart';
import 'Homepage.dart';
// import 'Onboarding.dart';
import 'Prod1.dart';
import 'Prod2.dart';
import 'Prod3.dart';
import 'Profilepage.dart';
import 'signup.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/': (context) => howToUse(),
      '/signin': (context) => SignInWidget(),
      '/home': (context) => const HomePageWidget(),
      '/prod1': (context) => const Prod1Widget(),
      '/prod2': (context) => const Prod2Widget(),
      '/prod3': (context) => const Prod3Widget(),
      '/profile': (context) => const ProfilepageWidget(),
      '/Chpas': (context) => const ChangePasswordWidget(),
      '/eprofile': (context) => const EditprofileWidget(),
      '/signup': (context) => SignUpScreen()
    },
  ));
}
