import 'dart:async';
import 'package:flutter/material.dart';
import 'package:service_app/Screens/Customer/FindJobs/my_job_screen.dart';
import 'package:service_app/Screens/Customer/MyWallet/add_money_screen.dart';
import 'package:service_app/Screens/Customer/MyWallet/payment_screen.dart';
import 'package:service_app/Screens/Customer/ServiceProviderProfile/booking_info.dart';
import 'package:service_app/Screens/Customer/MyWallet/my_wallet_screen.dart';
import 'package:service_app/Screens/Customer/prsl_chat_screen.dart';
import 'package:service_app/Screens/Customer/receipt_screen.dart';
import 'package:service_app/Screens/ServiceProvider/edit_personal_information.dart';
import 'package:service_app/Screens/ServiceProvider/forgot_password_screen_SP.dart';
import 'package:service_app/Screens/ServiceProvider/home_page_screenSP.dart';
import 'package:service_app/Screens/ServiceProvider/login_screen_SP.dart';
import 'package:service_app/Screens/ServiceProvider/registration_screen_SP.dart';
import 'package:service_app/Screens/ServiceProvider/service_provider_screen.dart';
import 'package:service_app/Screens/Customer/FindJobs/search_jobs_screen.dart';
import 'Screens/Customer/Chat/chat_screen.dart';
import 'Screens/Customer/Profile/profile_settings_screen.dart';
import 'Screens/Customer/ServiceProviderProfile/service_provider_profile_screen.dart';
import 'package:service_app/Screens/Customer/MyBooking/MyBookingScreen.dart';
import 'package:service_app/Screens/Customer/customer_screen.dart';
import 'package:service_app/Screens/Customer/forgot_password_screen.dart';
import 'package:service_app/Screens/Customer/home_page_screen.dart';
import 'package:service_app/Screens/Customer/login_screen.dart';
import 'package:service_app/Screens/Customer/Notification/notification_screen.dart';
import 'package:service_app/Screens/Customer/Profile/profile_settings_screen.dart';
import 'package:service_app/Screens/Customer/registration_screen.dart';
import 'package:service_app/Screens/logo_screen.dart';
import 'package:service_app/Screens/welcome_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Roboto Regular'),
      initialRoute: WelcomeScreen.id,
      routes: {
        SplashScreen.id: (context) => SplashScreen(),
        WelcomeScreen.id: (context) => WelcomeScreen(),

        ///Customer Screens
        CustomerScreen.id: (context) => CustomerScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        ForgotPasswordScreen.id: (context) => ForgotPasswordScreen(),
        HomePageScreen.id: (context) => HomePageScreen(),
        ProfileScreen.id: (context) => ProfileScreen(),
        MyBookingScreen.id: (context) => MyBookingScreen(),
        NotificationScreen.id: (context) => NotificationScreen(),
        ChatScreen.id: (context) => ChatScreen(),
        ServiceProviderProfileScreen.id: (context) =>
            ServiceProviderProfileScreen(),
        PrslChatScreen.id: (context) => PrslChatScreen(),
        BookingInfo.id: (context) => BookingInfo(),
        MyWalletScreen.id: (context) => MyWalletScreen(),
        AddMoneyScreen.id: (context) => AddMoneyScreen(),
        PaymentScreen.id: (context) => PaymentScreen(),
        ReceiptScreen.id: (context) => ReceiptScreen(),
        SearchJobsScreen.id: (context) => SearchJobsScreen(),
        MyJobScreen.id: (context) => MyJobScreen(),

        ///Service Provider Screens
        ServiceProviderScreen.id: (context) => ServiceProviderScreen(),
        LoginScreenSP.id: (context) => LoginScreenSP(),
        RegistrationScreenSP.id: (context) => RegistrationScreenSP(),
        ForgotPasswordScreenSP.id: (context) => ForgotPasswordScreenSP(),
        HomePageScreenSP.id: (context) => HomePageScreenSP(),
        EditPersonalDetailsScreenSP.id: (context) =>
            EditPersonalDetailsScreenSP(),
      },
    );
  }
}
