import 'package:flutter/material.dart';
import 'package:apicall/models/restaurent.dart';

class RestaurentListPage extends StatelessWidget {
  const RestaurentListPage({super.key});

  @override
  Widget build(BuildContext context) {
    //const restaurent = Restaurent('Saravana Bhavan', 'No. 123, Ponamallee Road, Avadi');
    List<Restaurent> restaurentList = [
      Restaurent('Saravana Bhavan', 'Ponamallee', distance: 6),
      Restaurent('Adayar Ananda Bhavan', 'Anna Nagar', distance: 4),
      Restaurent('Anjappar Hotel', 'Tharamani', distance: 3),
      Restaurent('Faruzzi', 'Velacherry', distance: 7),
      Restaurent('Pascab', 'Avadi'),
    ];

    Widget shopCard(int index) {
      return Card(
        color: Color.fromARGB(255, 212, 203, 237),
        elevation: 5,
        child: ListTile(
          title: Text(
            restaurentList[index].name,
            style: const TextStyle(
                color: Colors.black, fontSize: 15, fontWeight: FontWeight.w700),
          ),
          subtitle: Text(restaurentList[index].address),
          trailing: restaurentList[index].distance != null
              ? Text('${restaurentList[index].distance} Kms')
              : const Text(''),
        ),
      );
    }

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 220, 234, 237),
        body: SingleChildScrollView(
          child: Container(
            //color: Colors.purple,
            padding: const EdgeInsets.all(20),
            child: Padding(
              padding: const EdgeInsets.all(0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Center(
                    child: Text(
                      'Restaurent List Page',
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  /**SizedBox(height: 50),
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
                  )**/
                  const SizedBox(height: 50),
                  ListView.builder(
                    shrinkWrap: true,
                    primary: false,
                    padding: EdgeInsets.zero,
                    itemCount: restaurentList.length,
                    itemBuilder: (context, index) {
                      return shopCard(index);
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
