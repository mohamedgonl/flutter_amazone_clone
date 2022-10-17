import 'dart:convert';

import 'package:amazone_clone/constants/error_handle.dart';
import 'package:amazone_clone/constants/global_variables.dart';
import 'package:amazone_clone/constants/utils.dart';
import 'package:amazone_clone/models/user.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class AuthService {
  void signUpUser({
    required BuildContext context,
    required String email,
    required String password,
    required String name,
  }) async {
    try {
      User user = User(
          id: '',
          email: email,
          name: name,
          password: password,
          address: '',
          type: '',
          token: '');

       print('Here is body: ${user.toJson()}');
      http.Response res = await http.post(
        Uri.parse('$uri/api/signup'),
        body: user.toJson(),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
      );

      httpErrorHandle(
        response: res,
        buildContext: context,
        onSuccess: () {
          showSnackBar(context, 'Account created!');
        },
      );
    } catch (e) {
      showSnackBar(context, e.toString());
    }
  }
}
