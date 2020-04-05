import 'package:boring_app/src/articles.dart';
import 'dart:convert';
//import 'package:built_value/built_value.dart';
//import 'package:built_collection/built_collection.dart';
//import 'serializers.dart';
//
//part 'json_parsing.g.dart';
//
//abstract class Article implements Built<Article ArticleBuilder>{
//  int get id;
//}

List<int> parseTopStories(String json) {
  final parsed = jsonDecode(json);
  final listOfIds = List<int>.from(parsed);
  return listOfIds;
}

Article parseArticle(String json) {
  final parsed = jsonDecode(json);
  return parsed;
}
