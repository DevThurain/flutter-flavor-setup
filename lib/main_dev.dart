import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_flavor_setup/firebase_options_dev.dart' as dev;


import 'flavors.dart';

import 'main.dart' as runner;

Future<void> main() async {
  F.appFlavor = Flavor.dev;
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: dev.DefaultFirebaseOptions.currentPlatform,
  );
  await runner.main();
}
