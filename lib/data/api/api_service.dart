import 'dart:convert';
import 'package:news_app/data/model/article.dart';
import 'package:http/http.dart' as http;

class ApiService {
  Future<ArticlesResult> topHeadlines() async {
    final response = await http.get(Uri.parse(
        "http://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=94b202017fdd472cb4d847337c5d880e"));
    // print(response.body);
    if (response.statusCode == 200) {
      return ArticlesResult.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load top headlines');
    }
  }
}
