import 'package:dio/dio.dart';

import '../../core/configs/configs.dart';
import '../models/app_user.dart';
import '../models/register_req.dart';

class HttpServices {
  Dio dio = Dio();

  HttpServices() {
    dio.options.baseUrl = url;
    dio.options.connectTimeout = 5000;
    dio.options.receiveTimeout = 3000;
  }

  final AppUser _appUser = AppUser(
      uid: "uid",
      name: "Kasun Dulara",
      email: "kasundularaam@gmail.com",
      address: "Kegalle",
      age: 21,
      password: "123456");

  Future<AppUser> getUser({required String id}) async {
    try {
      // Response response = await dio
      //     .post(DataProvider.login, data: {'id': email, 'name': password});

      Future.delayed(const Duration(seconds: 4));
      return _appUser;
    } catch (e) {
      throw e.toString();
    }
  }

  Future<AppUser> register({required RegisterReq registerReq}) async {
    try {
      // Response response =
      //     await dio.post(DataProvider.users, data: registerReq.toMap());
      // Future.delayed(const Duration(seconds: 4));
      return _appUser;
    } catch (e) {
      throw e.toString();
    }
  }

  Future<AppUser> login(
      {required String email, required String password}) async {
    try {
      // Response response = await dio
      //     .post(DataProvider.login, data: {'id': email, 'name': password});

      Future.delayed(const Duration(seconds: 4));
      return _appUser;
    } catch (e) {
      throw e.toString();
    }
  }
}
