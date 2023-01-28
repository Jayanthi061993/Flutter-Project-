import 'package:flutter/material.dart';
import 'package:onboard_app/models/accounts.dart';

class AccountsListPage extends StatelessWidget {
  const AccountsListPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Accounts> accountsList = [
      Accounts('Depository', '1 year Netflix subscription', amount: 20000),
      Accounts('Loan', 'Plaid Student Loan', amount: 10000),
      Accounts('Credit', 'monthly-interest-only-payment', amount: 5000),
      Accounts('Payroll', 'Heartland Toy Company', amount: 500),
      Accounts('Regular', 'gross_earnings', amount: 1000),
    ];

    Widget shopCard(int index) {
      return Card(
        color: Colors.white,
        elevation: 5,
        child: ListTile(
          title: Text(
            accountsList[index].type,
            style: const TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.normal),
          ),
          subtitle: Text(
            accountsList[index].description,
            style: const TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
          ),
          trailing: accountsList[index].amount != null
              ? Text(
                  '₹. ${accountsList[index].amount}',
                  style: const TextStyle(
                      fontSize: 15, fontWeight: FontWeight.normal),
                )
              : const Text(''),
        ),
      );
    }

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black45,
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
                      'Hi Jayanthi',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 50),
                  ListView.builder(
                    shrinkWrap: true,
                    primary: false,
                    padding: EdgeInsets.zero,
                    itemCount: accountsList.length,
                    itemBuilder: (context, index) {
                      return shopCard(index);
                    },
                  ),
                  const SizedBox(height: 50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.add,
                        size: 25,
                        color: Colors.black,
                      ),
                      ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.white),
                        ),
                        onPressed: () {},
                        child: const Text(
                          'Add Account',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
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
