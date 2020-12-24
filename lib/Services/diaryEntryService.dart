import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';
import 'dart:io';
import '../JsonModels/diaryEntry.dart';
import 'config.dart';

Future<DiaryEntry> addEntry(var data, var token) async{
 
  var response = await http.post('$API_URL/diary_entries',
    
    headers: {HttpHeaders.authorizationHeader: 'Bearer $token'},
    body: data

  );

  if(response.statusCode == 201){
    return DiaryEntry.fromJson(jsonDecode(response.body));
  }

  else {
    throw Exception('An error occured when saving entry');
  }

}