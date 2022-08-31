// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'login_cubit.dart';

abstract class LoginState extends Equatable {
  const LoginState();

  @override
  List<Object> get props => [];
}

class LoginInitial extends LoginState {}

class LoginLoading extends LoginState {}

class LoginSucceed extends LoginState {
  final AppUser appUser;
  const LoginSucceed({
    required this.appUser,
  });

  @override
  List<Object> get props => [appUser];
}

class LoginFailed extends LoginState {
  final String message;
  const LoginFailed({
    required this.message,
  });

  @override
  List<Object> get props => [message];
}
