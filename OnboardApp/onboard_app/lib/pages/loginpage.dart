import 'package:flutter/material.dart';
//import 'package:pages/dash_board_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: const EdgeInsets.all(20),
          color: Colors.brown[300],
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Text("User Name:"),
              //TextFormField(),
              const SizedBox(height: 30),
              Image.asset(
                'assets/user.png',
                height: 70,
                width: 70,
                //alignment: Alignment.center,
              ),
              /*const Center(
                child: Icon(
                  Icons.people,
                  size: 100,
                ),  
              ),*/

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
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                  ),
                  onPressed: () {
                    //Navigator.of(context).push(MaterialPageRoute(
                    //builder: (context) => null));
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
