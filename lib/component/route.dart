import 'package:go_router/go_router.dart';
import 'package:nard/screen/book_consulation.dart';
import 'package:nard/auth/feedback_screen.dart';
import 'package:nard/screen/more_detils_portfolio.dart';
import 'package:nard/screen/setting_screen.dart';
import 'package:nard/widget/phone_card.dart';
import '../screen/our_services.dart';
import '../screen/profile.dart';
import '../auth/sign_in.dart';
import '../widget/bottom_nav_bar.dart';
import '../screen/notification_screen.dart';
import '../screen/contact_screen.dart';
import '../component/constant.dart';

GoRouter router() {
  return GoRouter(
      initialLocation: home,
      routes: [
      GoRoute(path: home, builder: ((ctx, state) =>const BottomNavigationBarExample())),
      GoRoute(path: notification, builder: ((ctx, state) => const NotificationScreen())),
      GoRoute(path: book, builder: ((ctx, state) => const BookConsultation())),
      GoRoute(path: login, builder: ((ctx, state) =>  LoginScreen())),
      GoRoute(path: profile, builder: ((ctx, state) => const ProfileScreen())),
      GoRoute(path: setting, builder: ((ctx, state) =>  SettingScreen())),
      GoRoute(path: ourServices, builder: ((ctx, state) => const OurServices())),
      GoRoute(path: portfolio, builder: ((ctx, state) => const MoreDetailsPortfolio())),
      GoRoute(path: phoneCard, builder: ((ctx, state) => const PhoneCard())),
      GoRoute(path: feedback, builder: ((ctx, state) => const FeedbackScreen())),
  ]);
}
