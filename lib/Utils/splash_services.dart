// ignore_for_file: use_build_context_synchronously

import 'dart:async';
import 'package:flutter/material.dart';
// import 'package:peareesa/providers/cart/cart.dart';
// import 'package:provider/provider.dart';
// import '../models/auth/user_model.dart';
// import '../views/screens/auth/login_screen.dart';
// import '../views/screens/home_screen.dart';
// import 'preferences.dart';

class SplashServices {
  void islogin(BuildContext context) {
    Timer(const Duration(seconds: 5), () async {
      // UserModel? user =
      //     await Preferences.init().then((value) => value.getAuth());
      // if (user != null) {
      //   print("______________________________");
      //   print(user.userData.warehouseID);
      //   await Provider.of<CartProvider>(context, listen: false).cleareCart();
      //   Navigator.pushReplacement(context,
      //       MaterialPageRoute(builder: (context) => const HomeScreen()));
      // } else {
      //   Navigator.pushReplacement(context,
      //       MaterialPageRoute(builder: (context) => const LoginPage()));
      // }
    });
  }
}
