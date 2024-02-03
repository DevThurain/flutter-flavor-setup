import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_flavor_setup/flavors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final remoteConfig = FirebaseRemoteConfig.instance;
  String flag = '';

  @override
  void initState() {
    super.initState();
    _initializeRemoteConfig();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(F.title)),
        body: Center(
          child: Text('Home Page with flag - $flag'),
        ));
  }

  Future<void> _initializeRemoteConfig() async {
    await remoteConfig.setConfigSettings(RemoteConfigSettings(
      fetchTimeout: const Duration(minutes: 1),
      minimumFetchInterval: const Duration(hours: 1),
    ));

    await remoteConfig.fetchAndActivate();
    setState(() {
      flag = remoteConfig.getString('flag');
    });
  }
}
