import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';
import 'dart:io';
import '../JsonModels/diaryEntry.dart';
import 'config.dart';

Future<DiaryEntry> addEntry(var data, var token) async {
  var response = await http.post('$API_URL/diary_entries',
      headers: {HttpHeaders.authorizationHeader: 'Bearer $token'}, body: data);

  if (response.statusCode == 201) {
    return DiaryEntry.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('An error occured when saving entry');
  }
}

Future<EntryInfo> discoverEntry() async {
  var response = await http.get('$API_URL/diary_entries');

  if (response.body.isNotEmpty) {
    if (response.statusCode == 200) {
      return EntryInfo.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('An error occured when retrieving entries');
    }
  } else {
    return null;
  }
}

Future<List<EntryInfo>> getEntries(String user, int page) async {
  var response =
      await http.get('$API_URL/users/$user/diary_entries?page=$page');
  if (response.statusCode == 200) {
    var decoded = jsonDecode(response.body);
    return List<EntryInfo>.from(
        decoded['data'].map((e) => EntryInfo.fromJson(e)));
  } else {
    throw Exception('An error occured when fetching entries');
  }
}

List<TagsInfo> parseTags(String responseBody) {
  final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();
  return parsed.map<TagsInfo>((json) => TagsInfo.fromJson(json)).toList();
}

Future<List<TagsInfo>> getTags(String entryID) async {
  var response = await http.get('$API_URL/diary_entries/$entryID/tags');

  if (response.statusCode == 200) {
    return parseTags(response.body);
  } else {
    throw Exception('An error occured when fetching entry tags');
  }

}

Future<DiaryEntry> deleteEntry(id, token) async {
  var response = await http.delete('$API_URL/diary_entries/$id',
      headers: {HttpHeaders.authorizationHeader: 'Bearer $token'});

  if (response.statusCode == 200) {
    var decoded = jsonDecode(response.body);
    return DiaryEntry.fromJson(decoded);
  } else {
    throw Exception('An error occured when deleting entry');
  }
}

Future<DiaryEntry> updateEntry(id, data, token) async {
  var response = await http.put('$API_URL/diary_entries/$id',
      headers: {HttpHeaders.authorizationHeader: 'Bearer $token'}, body: data);

  if (response.statusCode == 201) {
    var decoded = jsonDecode(response.body);
    return DiaryEntry.fromJson(decoded);
  } else {
    throw Exception('An error occured when updating entry');
  }
}
