import 'dart:convert';

import 'package:amazone_clone/constants/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

void httpErrorHandle({
  required http.Response response,
  required BuildContext buildContext,
  required VoidCallback onSuccess,
}) {
  switch (response.statusCode) {
    case 200:
      onSuccess();
      break;
    case 400:
      showSnackBar(buildContext, jsonDecode(response.body)['msg']);
      break;
    case 500:
      showSnackBar(buildContext, jsonDecode(response.body)['error']);
      break;
    default:
      showSnackBar(buildContext, response.body);
  }
}
