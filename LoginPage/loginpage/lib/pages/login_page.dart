import 'package:flutter/material.dart';
import 'package:loginpage/pages/restaurent_list_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: const EdgeInsets.all(20),
          color: const Color.fromARGB(255, 189, 160, 239),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Text("User Name:"),
              //TextFormField(),
              const SizedBox(height: 30),
              const Center(
                child: Icon(
                  Icons.restaurant_menu_outlined,
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
                        builder: (context) => RestaurentListPage()));
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
