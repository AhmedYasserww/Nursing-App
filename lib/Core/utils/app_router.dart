import 'package:go_router/go_router.dart';
import 'package:nursing_app/features/auth/presentations/views/log_in_view.dart';
import 'package:nursing_app/features/auth/presentations/views/sign_up_nursing_view.dart';
import 'package:nursing_app/features/onboarding/views/know_the_identity_view.dart';
import 'package:nursing_app/features/onboarding/views/onboarding_view.dart';

import '../../features/splash/views/splash_view.dart';
abstract class AppRouter{
  static const kOnBoardingView='/onBoardingView';
  static const kKnowTheIdentityView='/knowTheIdentityView';
  static const kHomeView = '/homeView';
  static const kSearchView='/searchView';
  static const kSignUpView='/signUpView';
  static const kLogInView='/logInView';



  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),

      ),
      GoRoute(
        path: kOnBoardingView,
        builder: (context, state) => const OnboardingView(),
      ),
      GoRoute(
        path: kKnowTheIdentityView,
        builder: (context, state) => const KnowTheIdentityView(),
      ),
      GoRoute(
        path: kLogInView,
        builder: (context, state) => const LogInView(),
      ),
      GoRoute(
        path: kSignUpView,
        builder: (context, state) => const SignUpNursingView(),
      ),



    ],
  );
}
