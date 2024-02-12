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
    return Scaffold(
      appBar: AppBar(
        title: const Text('Authorization'),
      ),
      body: Center(
        child: Column(children: [
        const SizedBox(width: 400, height: 80, child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Enter your Login',
             ),
           ),
          ),
        const SizedBox(width: 400, height: 80, child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Enter your Password',
              ),
           ),
          ),
        Container(height: 20,),
        ElevatedButton(
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
    );
  }
}

class Regi extends StatelessWidget {
  const Regi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registration'),
      ),
      body: Center(
        child: Column(children: [
          const SizedBox(width: 400, height: 80, child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Enter your E-mail',
              ),
            ),
          ),
        const SizedBox(width: 400, height: 80, child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Create your Login',
             ),
            ),
          ),
        const SizedBox(width: 400, height: 80, child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Create a Password',
             ),
            ),
          ),
          const SizedBox(width: 400, height: 80, child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Confirm the Password',
              ),
            ),
          ),
        Container(height: 20,),
        ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Log in here!'),
        ),
        ],
      ),
      ),
    );
  }
}