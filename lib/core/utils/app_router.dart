import 'package:dalel_app/features/auth/presentation/views/forget_password_view.dart';
import 'package:dalel_app/features/auth/presentation/views/login_view.dart';
import 'package:dalel_app/features/auth/presentation/views/signup_view.dart';
import 'package:dalel_app/features/auth/presentation/views_model/cubits/cubit/auth_cubit.dart';
import 'package:dalel_app/features/home/presentation/views/widgets/home_nav_bar.dart';
import 'package:dalel_app/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:dalel_app/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

final appRoute = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: '/onBoardingView',
      builder: (context, state) => const OnBoardingView(),
    ),
    GoRoute(
      path: '/homeNavBar',
      builder: (context, state) => HomeNavBarItem(),
    ),
    GoRoute(
      path: '/loginView',
      builder: (context, state) => BlocProvider(
        create: (context) => AuthCubit(),
        child: const LoginView(),
      ),
    ),
    GoRoute(
      path: '/signUpView',
      builder: (context, state) => BlocProvider(
        create: (context) => AuthCubit(),
        child: const SignUpView(),
      ),
    ),
    GoRoute(
      path: '/forgetPasswordView',
      builder: (context, state) => BlocProvider(
        create: (context) => AuthCubit(),
        child: const ForgetPasswordView(),
      ),
    ),
  ],
);
