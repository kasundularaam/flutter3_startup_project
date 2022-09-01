import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/http/http_services.dart';
import '../../../data/models/app_user.dart';
import '../../../data/shared/shared_services.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  AppUser? _appUser;

  Future loadUser() async {
    try {
      emit(AuthLoading());
      await Future.delayed(const Duration(seconds: 2));
      final bool isUserIn = await SharedServices.isUserIn();
      if (isUserIn) {
        final String id = await SharedServices.getUid();
        HttpServices services = HttpServices();
        _appUser = await services.getUser(id: id);
        emit(AuthHasUser(appUser: _appUser!));
      } else {
        emit(AuthNoUser());
      }
    } catch (e) {
      emit(AuthFailed(message: e.toString()));
    }
  }

  getUser() {
    if (_appUser != null) {
      emit(AuthHasUser(appUser: _appUser!));
    } else {
      loadUser();
    }
  }
}
