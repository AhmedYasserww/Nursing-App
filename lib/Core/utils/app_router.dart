import 'package:go_router/go_router.dart';
import 'package:nursing_app/features/auth/presentations/views/log_in_view.dart';
import 'package:nursing_app/features/auth/presentations/views/sigin_up_patient_view.dart';
import 'package:nursing_app/features/auth/presentations/views/sign_up_nursing_view.dart';
import 'package:nursing_app/features/auth/presentations/views/verify_the_account_view.dart';
import 'package:nursing_app/features/onboarding/views/know_the_identity_view.dart';
import 'package:nursing_app/features/onboarding/views/onboarding_view.dart';
abstract class AppRouter{
  static const kOnBoardingView='/onBoardingView';
  static const kKnowTheIdentityView='/knowTheIdentityView';
  static const kHomeView = '/homeView';
  static const kSignUpNursingView='/signUpNursingView';
  static const kSignUpPatientView='/signUpPatientView';
  static const kLogInView='/logInView';



  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const VerifyTheAccountView(),

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
        path: kSignUpNursingView,
        builder: (context, state) => const SignUpNursingView(),
      ),
      GoRoute(
        path: kSignUpPatientView,
        builder: (context, state) => const SignUpPatientView(),
      ),




    ],
  );
}
