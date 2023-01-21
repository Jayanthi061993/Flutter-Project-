import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
//import 'dart:convert' as convert;
//import 'dart:async' as async;
import 'package:apicall/models/books.dart';

class BooksListPage extends StatefulWidget {
  const BooksListPage({super.key});

  @override
  State<BooksListPage> createState() => _BooksListPageState();
}

class _BooksListPageState extends State<BooksListPage> {
  List<Book> booklist = [];

  final Future<List<Book>> _fetchBooksList = Future<List<Book>>.delayed(
    const Duration(seconds: 0),
    () async {
      var url =
          Uri.https('www.googleapis.com', '/books/v1/volumes', {'q': '{http}'});

      //Await the http get response, then decode the json-formatted response.
      var response = await http.get(url);
      //if (response.statusCode == 200)

      final BooksResponse bookResponse = BooksResponse.fromJson(response.body);
      return bookResponse.items;
    },
  );

  @override
  Widget build(BuildContext context) {
    Widget bookCard(Book? book) {
      return Card(
        elevation: 5,
        child: ListTile(
          title: Text(
            book?.volumeInfo.title ?? '',
            style: const TextStyle(
                color: Color(0XFF626165),
                fontSize: 18,
                fontWeight: FontWeight.w700),
          ),
          subtitle: Text(book?.volumeInfo.publisher ?? ''),
          trailing: book?.saleInfo.retailPrice != null
              ? Text('\$${book?.saleInfo.retailPrice?.amount.toString()}')
              : const Text(''),
        ),
      );
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: SingleChildScrollView(
          child: FutureBuilder<List<Book>>(
            future: _fetchBooksList,
            builder:
                (BuildContext context, AsyncSnapshot<List<Book>> snapshot) {
              List<Widget> children;
              if (snapshot.hasData) {
                //this block is executed when the response contains the data
                children = <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: Text(snapshot.data![0].volumeInfo.title),
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    primary: false,
                    padding: EdgeInsets.zero,
                    itemCount: snapshot.data?.length,
                    itemBuilder: (context, index) {
                      return bookCard(snapshot.data?[index]);
                    },
                  ),
                ];
              } else if (snapshot.hasError) {
                children = <Widget>[
                  const Icon(
                    Icons.error_outline,
                    color: Colors.red,
                    size: 60,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: Text('Error: ${snapshot.error}'),
                  ),
                ];
              } else {
                children = const <Widget>[
                  SizedBox(
                    width: 60,
                    height: 60,
                    child: CircularProgressIndicator(),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 16),
                    child: Text('Loading book list data...'),
                  ),
                ];
              }
              // Future Builder is returning this piece of code
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: children,
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
