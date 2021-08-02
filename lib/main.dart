import 'package:flutter/material.dart';
import 'package:teste_dio/pages/page_post_widget.dart';

import 'pages/repository/repository_back.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  IRepositoryApi repository = RepositoryApi();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(title: Text('Consumindo api')),
        body: PagePostWidget(
          post: repository.getPost(),
        ),
      ),
    );
  }
}
