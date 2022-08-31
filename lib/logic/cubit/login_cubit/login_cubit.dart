import 'package:flutter3_startup_project/data/models/app_user.dart';
import 'package:flutter3_startup_project/main.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  Future login({required String email, required String password}) async {
    try {
      emit(LoginLoading());
      Future.delayed(const Duration(seconds: 3));
      final AppUser appUser = AppUser(uid: uid, name: name)
      emit(state)
    } catch (e) {
      emit(LoginFailed(message: e.toString()));
    }
  }
}
