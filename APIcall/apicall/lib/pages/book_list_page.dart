import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:apicall/models/books.dart';

class BooksListPage extends StatefulWidget {
  const BooksListPage({super.key});

  @override
  State<BooksListPage> createState() => _BooksListPageState();
}

class _BooksListPageState extends State<BooksListPage> {
  Future fetchBooksList() async {
    var url = Uri.https('www.googleapis.com',
        '/books/v1/volumes?q=search+terms', {'q': '{https}'});
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var jsonResponse =
          convert.jsonDecode(response.body) as Map<String, dynamic>;
      var itemCount = jsonResponse['totalItems'];

      @override
      Widget build(BuildContext context) {
        return Container();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
