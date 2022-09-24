// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'auth_cubit.dart';

abstract class AuthState extends Equatable {
  const AuthState();

  @override
  List<Object> get props => [];
}

class AuthInitial extends AuthState {}

class AuthLoading extends AuthState {}

class AuthHasUser extends AuthState {
  final AppUser appUser;
  const AuthHasUser({
    required this.appUser,
  });

  @override
  List<Object> get props => [appUser];
}

class AuthNoUser extends AuthState {}

class AuthFailed extends AuthState {
  final String message;
  const AuthFailed({
    required this.message,
  });

  @override
  List<Object> get props => [message];
}
