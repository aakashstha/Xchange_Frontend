import 'package:flutter/material.dart';
import 'package:xchange_frontend/login.dart';
import 'package:xchange_frontend/theme_colors.dart';
import 'package:xchange_frontend/navigation.dart';
import 'package:xchange_frontend/signup.dart';
import 'package:xchange_frontend/reset_password.dart';
import 'package:xchange_frontend/Home/home.dart';
import 'package:xchange_frontend/Home/sell.dart';
import 'package:xchange_frontend/Home/my_ads.dart';
import 'package:xchange_frontend/Home/account.dart';
import 'package:xchange_frontend/Home/Others/more_category.dart';
import 'package:xchange_frontend/Home/Category/place_car_ad.dart';
import 'package:xchange_frontend/Home/Category/place_mobile_ad.dart';
import 'package:xchange_frontend/Account/edit_profile.dart';
import 'package:xchange_frontend/Account/settings.dart';
import 'package:xchange_frontend/Account/private_information.dart';
import 'package:xchange_frontend/Account/invite_friends.dart';
import 'package:xchange_frontend/Account/help.dart';
import 'package:xchange_frontend/Account/notifications.dart';
import 'package:xchange_frontend/Account/change_password.dart';
import 'package:xchange_frontend/Account/change_email.dart';
import 'package:xchange_frontend/Account/change_phonenumber.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of this application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Classified Application',
      theme: ThemeData(
        scaffoldBackgroundColor: white,
        hintColor: spanishGrey,
        inputDecorationTheme: const InputDecorationTheme(
          border: InputBorder.none,
          hintStyle: TextStyle(
            fontSize: 18,
            fontFamily: 'RobotoCondenced',
          ),
        ),
      ),
      routes: <String, WidgetBuilder>{
        '/login': (context) => const Login(),
        '/signup': (context) => const Signup(),
        '/resetPassword': (context) => const ResetPassword(),

        // main pages in this application
        '/navigation': (context) => const Navigation(),
        '/home': (context) => const Home(),
        '/sell': (context) => const Sell(),
        '/myAds': (context) => const MyAds(),
        '/account': (context) => const Account(),

        // Others
        '/moreCategory': (context) => const MoreCategory(),
        '/placeCarAd': (context) => const CarAd(),
        '/placeMobileAd': (context) => const MobileAd(),

        // Acount
        '/editProfile': (context) => const EditProfile(),
        '/settings': (context) => const Settings(),
        '/privateInformation': (context) => const PrivateInformation(),
        '/inviteFriends': (context) => const InviteFriends(),
        '/help': (context) => const Help(),
        '/notifications': (context) => const Notifications(),
        '/changePassword': (context) => const ChangePassword(),
        '/changeEmail': (context) => const ChangeEmail(),
        '/changePhoneNumber': (context) => const ChangePhoneNumber(),
      },
      home: const Login(),
    );
  }
}
