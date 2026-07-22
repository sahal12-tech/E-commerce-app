import 'package:flutter/material.dart';

class PersonalizationDemo extends StatelessWidget {
  const PersonalizationDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Personalization Demo'),
      ),
      body: const Center(
        child: Text(
          'Welcome to the Personalization Demo!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}