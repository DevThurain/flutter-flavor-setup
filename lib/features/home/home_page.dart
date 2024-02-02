import 'package:flutter/material.dart';
import 'package:flutter_flavor_setup/flavors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(F.title)),
        body: const Center(
          child: Text('Home Page'),
        ));
  }
}
