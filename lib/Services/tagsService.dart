import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';
import '../JsonModels/tags.dart';
import 'config.dart';

Future<Tags> getTags() async{
  
  /*Map<String,dynamic> body = {
    'email': email,
    'password': password
  };*/
 
  var response = await http.get('$API_URL/tags');

  if(response.statusCode == 200){
    return Tags.fromJson(jsonDecode(response.body));
  }

  else {
    throw Exception('Error Occured');
  }

} //IMPORT THIS TO DISCOVER PAGE TOO