import 'package:go_router/go_router.dart';
import 'package:nursing_app/features/onboarding/views/onboarding_view.dart';

import '../../features/splash/views/splash_view.dart';
abstract class AppRouter{
  static const kHomeView = '/homeView';
  static const kBookDetailsView ='/bookDetailsView';
  static const kSearchView='/searchView';
  static const kFavoriteView='/favoriteView';
  static const kSignUpView='/signUpView';
  static const kLogInView='/logInView';
  static const kOnBoardingView='/onBoardingView';

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


    ],
  );
}
