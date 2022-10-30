import 'package:flutter/material.dart';
import 'package:apicall/pages/dash_board_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: const EdgeInsets.all(20),
          color: Color.fromARGB(255, 237, 223, 223),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Text("User Name:"),
              //TextFormField(),
              const SizedBox(height: 30),
              const Center(
                child: Icon(
                  Icons.people,
                  size: 100,
                ),
              ),
              const TextField(
                decoration: InputDecoration(labelText: 'UserName'),
              ),
              const SizedBox(height: 30),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(labelText: 'Password'),
              ),
              const SizedBox(height: 30),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => DashboardPage()));
                  },
                  child: const Text('Login'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
