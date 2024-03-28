import 'package:dalel_app/core/utils/app_assets.dart';
import 'package:dalel_app/core/utils/styles.dart';
import 'package:dalel_app/features/auth/presentation/views/widgets/custom_forget_password_form.dart';
import 'package:dalel_app/features/auth/presentation/views/widgets/custom_head_text.dart';
import 'package:flutter/material.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(child: SizedBox(height: 64)),
            const SliverToBoxAdapter(
                child: CustomHeadText(headText: "Forget Password")),
            const SliverToBoxAdapter(child: SizedBox(height: 40)),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 250,
                width: MediaQuery.of(context).size.width,
                child: Image.asset(Assets.assetsImagesForgetPassword),
              ),
            ),
            const SliverToBoxAdapter(child: SizedBox(height: 24)),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 34.0),
                child: Text(
                  "Enter your registered email below to receive password reset instruction",
                  style: Styles.textStyle14,
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
            const SliverToBoxAdapter(child: SizedBox(height: 42)),
            const SliverToBoxAdapter(child: CustomForgetPasswordForm()),
            const SliverToBoxAdapter(child: SizedBox(height: 30)),
          ],
        ),
      ),
    );
  }
}
