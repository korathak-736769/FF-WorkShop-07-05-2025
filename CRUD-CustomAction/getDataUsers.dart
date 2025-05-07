// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

//
import 'package:http/http.dart' as http;
import 'dart:convert';

Future<List<dynamic>> getDataUsers(String? baseURL) async {
  // Add your function code here!
  final uri = Uri.parse(baseURL!);
  final response = await http.get(
    uri,
    headers: <String, String>{
      'Accept': 'application/json',
    },
  );

  if (response.statusCode < 200 || response.statusCode >= 300) {
    throw Exception('GET $uri failed: ${response.statusCode}');
  }

  return json.decode(response.body) as List<dynamic>;
}
