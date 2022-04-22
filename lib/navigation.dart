import 'package:flutter/material.dart';
import 'package:xchange_frontend/firstPages/login.dart';
import 'package:xchange_frontend/firstPages/theme_colors.dart';
import 'package:xchange_frontend/firstPages/home_navigation.dart';
import 'package:xchange_frontend/firstPages/signup.dart';
import 'package:xchange_frontend/firstPages/forgot_password.dart';
import 'package:xchange_frontend/Home/home.dart';
import 'package:xchange_frontend/Home/sell.dart';
import 'package:xchange_frontend/Home/my_ads.dart';
import 'package:xchange_frontend/Home/account.dart';
import 'package:xchange_frontend/Home/Others/more_category.dart';
import 'package:xchange_frontend/Home/Others/search.dart';
import 'package:xchange_frontend/account/edit_profile.dart';
import 'package:xchange_frontend/account/settings.dart';
import 'package:xchange_frontend/account/private_information.dart';
import 'package:xchange_frontend/account/invite_friends.dart';
import 'package:xchange_frontend/account/help.dart';
import 'package:xchange_frontend/account/account_delete.dart';
import 'package:xchange_frontend/account/change_password.dart';
import 'package:xchange_frontend/account/change_email.dart';
import 'package:xchange_frontend/account/change_phonenumber.dart';
import 'package:xchange_frontend/fetchData/all_buy_ad.dart';
import 'package:xchange_frontend/fetchData/cars_bikes/cars_one.dart';
import 'package:xchange_frontend/fetchData/mobiles/mobiles_one.dart';
import 'package:xchange_frontend/fetchData/properties/property_one.dart';
import 'package:xchange_frontend/fetchData/jobs/jobs_one.dart';
import 'package:xchange_frontend/fetchData/rooms/rooms_one.dart';
import 'package:xchange_frontend/fetchData/books_and_Others/books_others.dart';
import 'package:xchange_frontend/fetchData/all_view_image.dart';
import 'package:xchange_frontend/postData/car_bike/car_ad.dart';
import 'package:xchange_frontend/postData/mobile/mobile_ad.dart';
import 'package:xchange_frontend/postData/property/property_ad.dart';
import 'package:xchange_frontend/postData/job/job_ad.dart';
import 'package:xchange_frontend/postData/room/room_ad.dart';
import 'package:xchange_frontend/postData/book_and_others/book_others_ad.dart';
import 'package:xchange_frontend/updateData/car_bike/car_ad.dart';
import 'package:xchange_frontend/updateData/mobile/mobile_ad.dart';
import 'package:xchange_frontend/updateData/property/property_ad.dart';
import 'package:xchange_frontend/updateData/job/job_ad.dart';
import 'package:xchange_frontend/updateData/room/room_ad.dart';
import 'package:xchange_frontend/updateData/book_and_others/book_others_ad.dart';

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
        // First Pages
        '/login': (context) => const Login(),
        '/signup': (context) => const Signup(),
        '/forgotPassword': (context) => const ForgotPassword(),

        // main pages in this application
        '/navigation': (context) => const Navigation(),
        '/home': (context) => const Home(),
        '/sell': (context) => const Sell(),
        '/myAds': (context) => const MyAds(),
        '/account': (context) => const Account(),

        // Others
        '/moreCategory': (context) => const MoreCategory(),
        '/search': (context) => const Search(),

        // Acount
        '/editProfile': (context) => const EditProfile(),
        '/settings': (context) => const Settings(),
        '/privateInformation': (context) => const PrivateInformation(),
        '/inviteFriends': (context) => const InviteFriends(),
        '/help': (context) => const Help(),
        '/deleteAccount': (context) => const DeleteAccount(),
        '/changePassword': (context) => const ChangePassword(),
        '/changeEmail': (context) => const ChangeEmail(),
        '/changePhoneNumber': (context) => const ChangePhoneNumber(),

        // Fetch Data
        '/fetchAllBuyAds': (context) => const AllBuyAds(),
        '/fetchOneCarAd': (context) => const CarOneAd(),
        '/fetchOneMobileAd': (context) => const MobileOneAd(),
        '/fetchOnePropertyAd': (context) => const PropertyOneAd(),
        '/fetchOneJobAd': (context) => const JobOneAd(),
        '/fetchOneRoomAd': (context) => const RoomOneAd(),
        '/fetchOneBookAd': (context) => const BookAndAllOneAd(),
        '/fetchAllImage': (context) => const ImageOnly(),

        // Post Data
        '/placeCarAd': (context) => const CarAd(),
        '/placeMobileAd': (context) => const MobileAd(),
        '/placePropertyAd': (context) => const PropertyAd(),
        '/placeJobAd': (context) => const JobAd(),
        '/placeRoomAd': (context) => const RoomAd(),
        '/placeBookAndOthersAd': (context) => const BookAndOthersAd(),

        // Update Data
        '/updateCarAd': (context) => const UpdateCarAd(),
        '/updateMobileAd': (context) => const UpdateMobileAd(),
        '/updatePropertyAd': (context) => const UpdatePropertyAd(),
        '/updateJobAd': (context) => const UpdateJobAd(),
        '/updateRoomAd': (context) => const UpdateRoomAd(),
        '/updateBookAndOthersAd': (context) => const UpdateBookAndOthersAd(),
      },
      home: const Login(),
    );
  }
}
