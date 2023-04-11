import 'package:get/get.dart';
import 'package:screen_f/Home_screen/home_page.dart';
import 'package:screen_f/Home_screen/home_page_fonts.dart';
import 'package:screen_f/Login_page/login_page.dart';
import 'package:screen_f/Signup_page/app_signup.dart';
import 'package:screen_f/Splash_screen/splash_screen.dart';
import 'package:screen_f/Trade_Page/Trade_SettingPage/settings.dart';
import 'package:screen_f/Trade_Page/trade_page.dart';
import 'package:screen_f/Trade_Page/Trade_SettingPage/withdrawal_page.dart';

mixin Routes {
  static const defaultTransition = Transition.rightToLeft;
  static const String splashScreen = '/SplashScreen';
  static const String signUpPage = '/SignUpPage';
  static const String signInPage = '/LoginPage';
  static const String homePagePage = '/HomePage';
  static const String homePageFonts = '/HomePageFonts';
  static const String tradePage = '/TradePage';
  static const String settingPage = '/Settings';
 static const String withdrawalPage='/WithdrawalPage';
  static List<GetPage<dynamic>> pages = [
    GetPage<dynamic>(
      name: splashScreen,
      page: () => const SplashScreen(),
      transition: defaultTransition,
    ),
    GetPage<dynamic>(
      name: signInPage,
      page: () => const LoginPage(),
      transition: defaultTransition,
    ),
    GetPage<dynamic>(
      name: signUpPage,
      page: () => const SignUpPage(),
      transition: defaultTransition,
    ),
    GetPage<dynamic>(
      name: homePagePage,
      page: () => const HomePage(),
      transition: defaultTransition,
    ),
    GetPage<dynamic>(
      name: homePageFonts,
      page: () => const HomePageFonts(),
      transition: defaultTransition,
    ),
    GetPage<dynamic>(
      name: tradePage,
      page: () => const TradePage(),
      transition: defaultTransition,
    ),
    GetPage<dynamic>(
      name: settingPage,
      page: () => const Settings(),
      transition: defaultTransition,
    ),
    GetPage<dynamic>(
      name: withdrawalPage,
      page: () => const WithdrawalPage(),
      transition: defaultTransition,
    ),
  ];
}
