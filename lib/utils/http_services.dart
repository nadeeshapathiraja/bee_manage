// ignore_for_file: depend_on_referenced_packages

import 'dart:convert';

import 'package:http/http.dart';

Future<Response> postRequest(String url, dynamic bodyData,
    {String? token}) async {
  final headers = <String, String>{};
  headers["Content-type"] = "application/json";

  if (token != null && token.isNotEmpty) {
    headers["Authorization"] = 'Bearer  $token';
  }
  Object body = jsonEncode(bodyData);

  return await post(
    Uri.parse(url),
    headers: headers,
    body: body,
  );
}
