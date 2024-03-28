import 'package:dalel_app/core/functions/flutter_toast.dart';
import 'package:dalel_app/core/utils/app_color.dart';
import 'package:dalel_app/core/utils/app_strings.dart';
import 'package:dalel_app/core/widgets/custom_button.dart';
import 'package:dalel_app/features/auth/presentation/views/widgets/custom_row.dart';
import 'package:dalel_app/features/auth/presentation/views/widgets/custom_text_field.dart';
import 'package:dalel_app/features/auth/presentation/views_model/cubits/cubit/auth_cubit.dart';
import 'package:dalel_app/features/auth/presentation/views_model/cubits/cubit/auth_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class CustomSignUpForm extends StatelessWidget {
  const CustomSignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    AuthCubit authCubit = BlocProvider.of<AuthCubit>(context);
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is SignUpSucces) {
          flutterToast("Successfully, verify your account please");
          GoRouter.of(context).pushReplacement("/loginView");
        } else if (state is SignUpFailure) {
          flutterToast(state.errorMessage);
        }
      },
      builder: (context, state) {
        return Form(
          key: context.read<AuthCubit>().signUpFormKey,
          child: Column(
            children: [
              CustomTextFormField(
                labelText: 'First Name',
                obscureText: false,
                myController: context.read<AuthCubit>().signUpName,
              ),
              const SizedBox(height: 25),
              CustomTextFormField(
                labelText: 'Last Name',
                obscureText: false,
                myController: context.read<AuthCubit>().signUpLastName,
              ),
              const SizedBox(height: 25),
              CustomTextFormField(
                labelText: 'Email Address',
                obscureText: false,
                myController: context.read<AuthCubit>().signUpEmail,
              ),
              const SizedBox(height: 25),
              CustomTextFormField(
                labelText: 'Password',
                obscureText: authCubit.obscureText,
                myController: context.read<AuthCubit>().signUpPassword,
                color: Colors.black,
                onTap: () {
                  authCubit.showPassword();
                },
                icon: authCubit.obscureText == true
                    ? Icons.visibility_off_outlined
                    : Icons.visibility,
              ),
              const SizedBox(height: 19),
              const CustomAgreeRow(),
              const SizedBox(height: 91),
              state is SignUpLoading
                  ? const Center(child: CircularProgressIndicator())
                  : CustomButton(
                      color: authCubit.termsAndCondition == false
                          ? AppColor.grey
                          : AppColor.primaryColor,
                      text: AppStrings.signUp,
                      onPressed: () {
                        if (authCubit.termsAndCondition == true) {
                          authCubit.signUp();
                        }
                      },
                    ),
            ],
          ),
        );
      },
    );
  }
}
