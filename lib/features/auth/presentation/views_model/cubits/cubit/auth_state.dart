abstract class AuthState {}

final class AuthInitial extends AuthState {}

final class SignUpLoading extends AuthState {}

final class SignUpSucces extends AuthState {}

final class SignUpFailure extends AuthState {
  final String errorMessage;

  SignUpFailure({required this.errorMessage});
}

final class TermsAndConditionState extends AuthState {}

final class ShowPasswordState extends AuthState {}

final class LoginLoading extends AuthState {}

final class LoginUpSucces extends AuthState {}

final class LoginFailure extends AuthState {
  final String errorMessage;

  LoginFailure({required this.errorMessage});
}

final class ForgetPasswordLoading extends AuthState {}

final class ForgetPasswordSucces extends AuthState {}

final class ForgetPasswordFailure extends AuthState {}
