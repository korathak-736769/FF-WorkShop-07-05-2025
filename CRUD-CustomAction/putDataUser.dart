// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:http/http.dart' as http;
import 'dart:convert';

Future<dynamic> putDataUser(
    String? baseURL, String id, String firstName, String lastName) async {
  final uri = Uri.parse('$baseURL/$id');

  final response = await http.put(
    uri,
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',
    },
    body: json.encode({
      'firstName': firstName,
      'lastName': lastName,
    }),
  );

  if (response.statusCode < 200 || response.statusCode >= 300) {
    throw Exception('PUT $uri failed: ${response.statusCode}');
  }

  return json.decode(response.body);
}