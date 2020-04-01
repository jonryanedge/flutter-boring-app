import 'package:boring_app/src/articles.dart';
import 'dart:convert';

List<int> parseTopStories(String json) {
  final parsed = jsonDecode(json);
  final listOfIds = List<int>.from(parsed);
  return listOfIds;
}

Article parseArticle(String json) {
  final parsed = jsonDecode(json);
  return parsed;
}