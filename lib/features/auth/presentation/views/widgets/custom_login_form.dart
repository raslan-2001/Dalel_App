import 'package:dalel_app/core/functions/flutter_toast.dart';
import 'package:dalel_app/core/utils/app_color.dart';
import 'package:dalel_app/core/utils/styles.dart';
import 'package:dalel_app/features/auth/presentation/views/widgets/custom_text_field.dart';
import 'package:dalel_app/features/auth/presentation/views/widgets/signin_button.dart';
import 'package:dalel_app/features/auth/presentation/views_model/cubits/cubit/auth_cubit.dart';
import 'package:dalel_app/features/auth/presentation/views_model/cubits/cubit/auth_state.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class CustomLogInForm extends StatelessWidget {
  const CustomLogInForm({super.key});

  @override
  Widget build(BuildContext context) {
    AuthCubit authCubit = BlocProvider.of<AuthCubit>(context);
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is LoginUpSucces) {
          if (FirebaseAuth.instance.currentUser!.emailVerified == true) {
            flutterToast("Welcome Back!");
            GoRouter.of(context).pushReplacement("/homeNavBar");
          } else {
            flutterToast("Verfiy account first please to login");
          }
        } else if (state is LoginFailure) {
          flutterToast(state.errorMessage);
        }
      },
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Form(
            key: authCubit.signInFormKey,
            child: Column(
              children: [
                CustomTextFormField(
                  labelText: "Email Adress",
                  obscureText: false,
                ),
                const SizedBox(height: 25),
                CustomTextFormField(
                  labelText: "Password",
                  obscureText: authCubit.obscureText,
                  onTap: () {
                    authCubit.showPassword();
                  },
                  icon: authCubit.obscureText == true
                      ? Icons.visibility_off
                      : Icons.visibility,
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {
                        GoRouter.of(context).push("/forgetPasswordView");
                      },
                      child: Text(
                        "Forget Password ?",
                        style: Styles.textStyle14
                            .copyWith(color: AppColor.deepGrey),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 100),
                state is LoginLoading
                    ? Center(
                        child: CircularProgressIndicator(
                          color: AppColor.primaryColor,
                        ),
                      )
                    : SignInButton(
                        onPressed: () {
                          authCubit.signIn();
                        },
                      ),
                const SizedBox(height: 5),
              ],
            ),
          ),
        );
      },
    );
  }
}
