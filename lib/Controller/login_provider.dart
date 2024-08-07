import 'package:flutter/material.dart';
import '../Utils/utils.dart';
import '../Views/homeScreen.dart';

class LoginController with ChangeNotifier {
  Future<void> checkLogin(
      BuildContext context, String userName, String password) async {
    // print("login url : ${Utils.login}");
    // Map<String, dynamic> body = {"userName": userName, "password": password};
    // dynamic response =
    //     await NetworkAPIService.getPostApiResponse(Utils.login, body);
    // print(response);
    // if (response['status']) {
    //   UserModel user = UserModel.fromJson(response);
    //   await Preferences.init().then((value) => value.saveCridentials(user));
    //   Navigator.pop(context);
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
      return const HomeScreen();
    }));
    // } else {
    //   Navigator.pop(context);
    //   Utils.flushBarErrorMessage(response['message'], context);
    // }
  }
}
