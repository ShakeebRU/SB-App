import 'package:another_flushbar/flushbar.dart';
import 'package:another_flushbar/flushbar_route.dart';
import 'package:flutter/material.dart';

class Utils {
  // static String endPoint = "http://192.168.10.13:8005";
  // static String endPoint = "http://pareesaapi.riverravi.com"; //main
  // static String login = "$endPoint/api/Login/userlogin";
  // static String getallcreditcustomerlist =
  //     "$endPoint/api/Customer/getcreditcustomerlist";
  // static String getcashcustomerlist =
  //     "$endPoint/api/Customer/getcashcustomerlist";
  // static String getcitylist = "$endPoint/api/Setup/getcitylist";
  // static String savecashcustomer = "$endPoint/api/Customer/savecashcustomer";
  // static String getitemcategorylist = "$endPoint/api/Item/getitemcategorylist";
  // static String getitemcategorybrandlist =
  //     "$endPoint/api/Item/getitemcategorybrandlist";
  // static String getallitemlist = "$endPoint/api/Item/getallitemlist";
  // static String getitemlistbycategorybrand =
  //     "$endPoint/api/Item/getitemlistbycategorybrand";
  // static String getitemdetailbycode = "$endPoint/api/Item/getitemdetailbycode";
  // static String saveappsaleorder = "$endPoint/api/Invoice/saveappsaleorder";

  static TextStyle heading = const TextStyle(
    color: Colors.black,
    fontSize: 25,
  );

  static Color foreground = Color.fromARGB(255, 14, 159, 255);
  static Color foreground1 = const Color(0xFF1f1d2f);
  static Color background = const Color(0xFF0676e2);
  static Color cartNumber = Colors.redAccent;

  static void flushBarErrorMessage(String message, BuildContext context) {
    showFlushbar(
        context: context,
        flushbar: Flushbar(
          backgroundColor: Colors.red,
          forwardAnimationCurve: Curves.decelerate,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          padding: const EdgeInsets.all(15),
          flushbarPosition: FlushbarPosition.TOP,
          reverseAnimationCurve: Curves.easeInOut,
          positionOffset: 20,
          icon: const Icon(
            Icons.error,
            size: 28,
            color: Colors.white,
          ),
          duration: const Duration(seconds: 3),
          message: message,
        )..show(context));
  }

  static void flushBarSuccessfulMessage(String message, BuildContext context) {
    showFlushbar(
        context: context,
        flushbar: Flushbar(
          backgroundColor: Colors.green,
          forwardAnimationCurve: Curves.decelerate,
          borderRadius: const BorderRadius.all(Radius.circular(40)),
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          padding: const EdgeInsets.all(15),
          flushbarPosition: FlushbarPosition.TOP,
          reverseAnimationCurve: Curves.easeInOut,
          positionOffset: 20,
          icon: const Icon(
            Icons.error,
            size: 28,
            color: Colors.white,
          ),
          duration: const Duration(seconds: 3),
          message: message,
        )..show(context));
  }

  static Future<void> showLoadingDialog(BuildContext context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      useSafeArea: true,
      builder: (BuildContext context) {
        return Center(
          child: Container(
            height: 50,
            width: MediaQuery.of(context).size.width * 0.7,
            margin: const EdgeInsets.all(10),
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Loading',
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.8),
                      fontSize: 15.0,
                      decoration: TextDecoration.none),
                ),
                const SizedBox(width: 16.0),
                CircularProgressIndicator(
                  color: Colors.black.withOpacity(0.8),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
