import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';
import 'dart:io';
import '../JsonModels/deleteUser.dart';
import 'config.dart';

Future<UserAccount> deleteUser(id, token) async {
  var response = await http.delete('$API_URL/delete_user/$id',
      headers: {HttpHeaders.authorizationHeader: 'Bearer $token'});
  print(response.body);
  //print(token);
  if (response.statusCode == 200) {
    print(response);
    var decoded = jsonDecode(response.body);
    return UserAccount.fromJson(decoded);
  } else {
    throw Exception('An error occured when deleting user');
  }
}
