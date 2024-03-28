import 'package:dalel_app/core/functions/flutter_toast.dart';
import 'package:dalel_app/core/utils/app_strings.dart';
import 'package:dalel_app/core/widgets/custom_button.dart';
import 'package:dalel_app/features/auth/presentation/views/widgets/custom_text_field.dart';
import 'package:dalel_app/features/auth/presentation/views_model/cubits/cubit/auth_cubit.dart';
import 'package:dalel_app/features/auth/presentation/views_model/cubits/cubit/auth_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class CustomForgetPasswordForm extends StatelessWidget {
  const CustomForgetPasswordForm({super.key});

  @override
  Widget build(BuildContext context) {
    AuthCubit authCubit = BlocProvider.of(context);
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is ForgetPasswordSucces) {
          flutterToast("Check your email please!");
        } else if (state is ForgetPasswordFailure) {
          flutterToast("you must enter your email first");
        }
      },
      builder: (context, state) {
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: CustomTextFormField(
                myController: authCubit.signInEmail,
                labelText: "Email Adress",
                obscureText: false,
              ),
            ),
            const SizedBox(height: 180),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: state is ForgetPasswordLoading
                  ? const Center(
                      child: CircularProgressIndicator(),
                    )
                  : CustomButton(
                      text: AppStrings.sendVerificationCode,
                      onPressed: () {
                        authCubit.forgetPassword();
                        GoRouter.of(context).pushReplacement("/loginView");
                      },
                    ),
            ),
          ],
        );
      },
    );
  }
}
