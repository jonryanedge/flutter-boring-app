import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'src/articles.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'List App',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'List App Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Article> _articles = nipples;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_articles.length.toString()),
      ),
      body: new RefreshIndicator(
        onRefresh: () async {
          await new Future.delayed(const Duration(seconds: 2));
          setState(() {
            _articles.removeAt(0);
          });
        },
        child: new ListView(
          children: _articles.map(_buildItem).toList(),
        ),
      ),
    ); // This trailing comma makes auto-formatting nicer for build methods.
  }

  Widget _buildItem(Article article) {
    if (article.text.contains("fuck"))
      return Container(
        color: Colors.black54,
        child: Center(
            child: Text("Next Topic!",
            style: TextStyle(fontSize: 28.0, color: Colors.white)
            ),
        ),
      );
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: new ExpansionTile(
//        leading: Icon(Icons.bookmark_border),
        title: new Text(
            article.text,
            style: new TextStyle(fontSize: 18.0),
        ),
        subtitle: new Text("${article.age}"),
        trailing: Icon(Icons.event),
        children: <Widget>[
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              new Icon(Icons.launch),
              new Text("${article.commentsCount} comments!"),
            ],
          )
        ],
      ),
    );
  }
}
