import 'dart:math';

import 'package:equatable/equatable.dart';
import 'package:flutter3_startup_project/data/http/http_services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/models/app_user.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  Future login({required String email, required String password}) async {
    try {
      emit(LoginLoading());
      Future.delayed(const Duration(seconds: 3));
      HttpServices services = HttpServices();
      final AppUser appUser =
          await services.login(email: email, password: password);
      emit(LoginSucceed(appUser: appUser));
    } catch (e) {
      emit(LoginFailed(message: e.toString()));
    }
  }
}
