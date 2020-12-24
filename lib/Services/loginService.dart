import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';
import '../JsonModels/loginResponse.dart';
import 'config.dart';

Future<LoginResponse> authenticate(String email, String password) async{
  
  Map<String,dynamic> body = {
    'email': email,
    'password': password
  };
 
  var response = await http.post('$API_URL/auth/login', body:body);

  if(response.statusCode == 200 || response.statusCode == 401){
    return LoginResponse.fromJson(jsonDecode(response.body));
  }

  else {
    throw Exception('Error Occured');
  }

}