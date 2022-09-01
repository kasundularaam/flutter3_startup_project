part of 'register_cubit.dart';

abstract class RegisterState extends Equatable {
  const RegisterState();

  @override
  List<Object> get props => [];
}

class RegisterInitial extends RegisterState {}

class RegisterLoading extends RegisterState {}

class RegisterSucceed extends RegisterState {
  final AppUser appUser;
  const RegisterSucceed({
    required this.appUser,
  });

  @override
  List<Object> get props => [appUser];
}

class RegisterFailed extends RegisterState {
  final String message;
  const RegisterFailed({
    required this.message,
  });

  @override
  List<Object> get props => [message];
}
