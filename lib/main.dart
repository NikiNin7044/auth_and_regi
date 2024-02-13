import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Authorization and Registration',
    home: Autho(),
  ));
}

class Autho extends StatelessWidget {
  const Autho({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('Authorization'),
      ),
      body: SingleChildScrollView(
        child: Center(
            child: Column(
            children: [
            const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter your Login',
                   ),
                 ),
            const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter your Password',
                    ),
                 ),
            Container(height: 10,),
            ElevatedButton(
                child: const Text('Enter Account'),
                onPressed: () {},
              ),
            Container(height: 30,),
            TextButton(
                child: const Text('Register here!'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Regi()),
                  );
                },
              ),
            ],
                  ),
          ),
      ),
    );
  }
}

class Regi extends StatelessWidget {
  const Regi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: const Text('Registration'),
      ),
      body: SingleChildScrollView(
        child: Center(
              child: Column(
              children: [
                  const TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter your E-mail',
                      ),
                    ),
                const TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Create your Login',
                     ),
                    ),
                const TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Create a Password',
                     ),
                    ),
                  const TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Confirm the Password',
                      ),
                    ),
                Container(height: 10,),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Register Account'),
                ),
                Container(height: 30,),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Log in here!'),
                ),
                ],
                ),
          ),
      ),
    );
  }
}