import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:cycle_care/dto/News.dart';
import 'package:cycle_care/endpoints/endpoints.dart';

class DataServices {
  static Future<List<News>> fetchNews() async {
    final response = await http.get(Uri.parse(endpoint.news));
    if (response.statusCode == 200) {
      final List<dynamic> jsonResponse = jsonDecode(response.body);
      return jsonResponse.map((item) => News.fromJson(item)).toList();
    } else {
      throw Exception('Failed to load news');
    }
  }

   static Future<void> sendNews(String title, String body) async {
    Map<String, String> newsData = {
      "title": title,
      "body": body,
    };
    String jsonData = jsonEncode(newsData);
    await http.post(Uri.parse(endpoint.news),
        body: jsonData, headers: {'Content-Type': 'application/json'});
  }

  static Future<void> deleteData(String id) async {
    await http.delete(Uri.parse('${endpoint.news}/$id'),
        headers: {'Content-type': 'application/json'});
  }

  static Future<void> updateData(String id, String title, String body) async {
    Map<String, String> data = {"id": id, "title": title, "body": body};
    String jsonData = jsonEncode(data);
    await http.put(Uri.parse('${endpoint.news}/$id'),
        body: jsonData, headers: {'Content-type': 'application/json'});
  }
}
