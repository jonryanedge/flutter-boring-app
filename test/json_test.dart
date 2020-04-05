import 'package:flutter_test/flutter_test.dart';
import 'package:boring_app/json_parsing.dart';

void main() {
  test("parse hackernews api", () {
    const jsonString = "[17238241,17239602]";

    expect(parseTopStories(jsonString).first, 17238241);
  });

  test("parse hackernews api items", () {
    const jsonString = """ {"by":"dhouston","title":"nothing new"}
    """;

    expect(parseArticle(jsonString).by, "dhouston");
  });
}
