import 'package:flutter/material.dart';

class RestaurentListPage extends StatelessWidget {
  const RestaurentListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20),
            child: Padding(
              padding: const EdgeInsets.all(0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Center(
                    child: Text(
                      'Restaurent List Page',
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 50),
                  Card(
                    elevation: 5,
                    child: ListTile(
                      title: Text(
                        'Hotel Saravana Bhavan',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w700),
                      ),
                      subtitle: Text('No. 123, Ponamallee Road, Avadi'),
                      trailing: Text('2 Kms'),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
