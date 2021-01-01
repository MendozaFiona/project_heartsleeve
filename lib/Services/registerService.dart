import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';
import '../JsonModels/registration.dart';
import 'config.dart';

Future<Registration> addUser(var data) async {
  var response = await http.post('$API_URL/register', body: data);

  if (response.statusCode == 201 || response.statusCode == 422) {
    return Registration.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('An error occured when trying to register');
  }
 
}
