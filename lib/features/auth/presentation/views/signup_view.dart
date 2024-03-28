// ignore_for_file: unnecessary_string_interpolations

import 'package:dalel_app/features/auth/presentation/views/widgets/custom_check_row.dart';
import 'package:dalel_app/features/auth/presentation/views/widgets/custom_head_text.dart';
import 'package:dalel_app/features/auth/presentation/views/widgets/custom_signup_form.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: CustomScrollView(
            slivers: [
              const SliverToBoxAdapter(child: SizedBox(height: 108)),
              const SliverToBoxAdapter(
                  child: CustomHeadText(headText: 'Welcome !')),
              const SliverToBoxAdapter(child: SizedBox(height: 40)),
              const SliverToBoxAdapter(child: CustomSignUpForm()),
              const SliverToBoxAdapter(child: SizedBox(height: 16)),
              SliverToBoxAdapter(
                child: CustomCheckRow(
                  question: "Already have an account ?",
                  type: "Sign In",
                  onPressed: () {
                    GoRouter.of(context).pushReplacement("/loginView");
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
