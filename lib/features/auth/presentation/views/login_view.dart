import 'package:dalel_app/features/auth/presentation/views/widgets/custom_check_row.dart';
import 'package:dalel_app/features/auth/presentation/views/widgets/custom_head_text.dart';
import 'package:dalel_app/features/auth/presentation/views/widgets/login_design.dart';
import 'package:dalel_app/features/auth/presentation/views/widgets/custom_login_form.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(child: LoginDesgin()),
            const SliverToBoxAdapter(child: SizedBox(height: 32)),
            const SliverToBoxAdapter(
                child: CustomHeadText(headText: "Welcome Back !")),
            const SliverToBoxAdapter(child: SizedBox(height: 48)),
            const SliverToBoxAdapter(child: CustomLogInForm()),
            SliverToBoxAdapter(
              child: CustomCheckRow(
                question: "Don’t have an account ?",
                type: "Sign Up",
                onPressed: () {
                  GoRouter.of(context).pushReplacement("/signUpView");
                },
              ),
            ),
            const SliverToBoxAdapter(child: SizedBox(height: 18)),
          ],
        ),
      ),
    );
  }
}
