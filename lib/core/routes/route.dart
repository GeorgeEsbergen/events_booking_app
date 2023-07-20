
import 'package:book_withmyself/features/home/buttom_nav_bar/buttom_nav_bar.dart';
import 'package:book_withmyself/features/home/profiles/organizer_profile/organizer_profile.dart';
import 'package:flutter/material.dart';

import '../../features/auth/sign_in/forgot_password/forgot_pass.dart';
import '../../features/auth/sign_in/sign_in.dart';
import '../../features/auth/sign_up/sign_up.dart';
import '../../features/auth/sign_up/vreification/verification.dart';
import '../../features/home/Search/search.dart';
import '../../features/home/envent_details/event_details.dart';
import '../../features/home/home_page/home_page.dart';
import '../../features/on_boarding/ui/onboarding,.dart';
import '../../features/on_boarding/ui/secondboarding.dart';
import '../../features/on_boarding/ui/thirdboarding.dart';
 
 class AllRoutes {

 static Map<String, Widget Function(BuildContext)> allRoutes = {
  "/": (context) => const OnboardingScreen(),
  SecondBoarding.routeName: (context) => const SecondBoarding(),
  ThirdBoarding.routeName: (context) => const ThirdBoarding(),
  ThirdBoarding.routeName: (context) => const ThirdBoarding(),
  Verfication.routeName: (context) => const Verfication(),
  SignUp.routeName: (context) => const SignUp(),
  SignIn.routeName: (context) => const SignIn(),
  ForgotPassword.routeName: (context) => const ForgotPassword(),
  EventDetails.routeName: (context) => const EventDetails(),
  SearchScreen.routeName: (context) => const SearchScreen(),
  HomePage.routeName:(context) => const HomePage(),
  OrganizerProfile.routeName:(context) => const OrganizerProfile(),
  BottomNavBarScreen.routeName:(context) => const BottomNavBarScreen()
};


}
