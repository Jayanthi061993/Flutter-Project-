import 'package:flutter/material.dart';
import 'package:apicall/pages/restaurent_list_page.dart';
import 'package:apicall/pages/book_list_page.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});
  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 237, 223, 223),
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * .30,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  alignment: Alignment.topCenter,
                  image: AssetImage('assets/images/top_header2.jpg')),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: <Widget>[
                  Container(
                    height: 65,
                    margin: const EdgeInsets.only(bottom: 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const CircleAvatar(
                          radius: 35,
                          backgroundImage: NetworkImage(
                              'https://cdn-icons-png.flaticon.com/512/149/149071.png'),
                        ),
                        const SizedBox(width: 16),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const <Widget>[
                            Text('Hi Jayanthi',
                                style: TextStyle(
                                  fontSize: 24,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                )),
                            Text('Welcome Back!',
                                style: TextStyle(
                                  fontSize: 24,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                )),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    //width: double.infinity,
                    child: GridView.count(
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      crossAxisCount: 2,
                      primary: false,
                      children: <Widget>[
                        Card(
                          //semanticContainer: true,
                          margin: const EdgeInsets.only(top: 10),
                          color: Color.fromARGB(255, 239, 184, 112),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              IconButton(
                                padding: const EdgeInsets.all(0),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const RestaurentListPage()));
                                },
                                icon: Image.network(
                                  'https://cdn-icons-png.flaticon.com/128/3170/3170733.png',
                                  height: 500,
                                  width: 500,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const Text(
                                'Restaurent List',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        Card(
                          //semanticContainer: true,
                          margin: const EdgeInsets.only(top: 10),
                          color: Color.fromARGB(255, 123, 158, 238),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              IconButton(
                                padding: const EdgeInsets.all(0),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              BooksListPage()));
                                },
                                icon: Image.network(
                                  'https://cdn-icons-png.flaticon.com/128/2702/2702069.png',
                                  height: 500,
                                  width: 500,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const Text(
                                'Book List',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        Card(
                          //semanticContainer: true,
                          margin: const EdgeInsets.only(top: 10),
                          color: Color.fromARGB(255, 114, 235, 213),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              IconButton(
                                padding: const EdgeInsets.all(0),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const RestaurentListPage()));
                                },
                                icon: Image.network(
                                  'https://cdn-icons-png.flaticon.com/128/1743/1743614.png',
                                  height: 500,
                                  width: 500,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const Text(
                                'Auto Repair',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        Card(
                          //semanticContainer: true,
                          margin: const EdgeInsets.only(top: 10),
                          color: Color.fromARGB(255, 227, 222, 196),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              IconButton(
                                padding: const EdgeInsets.all(0),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const RestaurentListPage()));
                                },
                                icon: Image.network(
                                  'https://cdn-icons-png.flaticon.com/512/602/602225.png',
                                  height: 500,
                                  width: 500,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const Text(
                                'Real Estate',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
