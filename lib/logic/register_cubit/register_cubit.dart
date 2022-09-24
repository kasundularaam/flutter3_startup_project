import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/http/http_auth.dart';
import '../../../data/models/app_user.dart';
import '../../../data/models/register_req.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(RegisterInitial());

  Future register({required RegisterReq registerReq}) async {
    try {
      emit(RegisterLoading());
      Future.delayed(const Duration(seconds: 3));
      HttpAuth services = HttpAuth();
      final AppUser appUser = await services.register(registerReq: registerReq);
      emit(RegisterSucceed(appUser: appUser));
    } catch (e) {
      emit(RegisterFailed(message: e.toString()));
    }
  }
}
