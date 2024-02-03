import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_flavor_setup/firebase_options_qa.dart' as qa;

import 'flavors.dart';

import 'main.dart' as runner;

Future<void> main() async {
  F.appFlavor = Flavor.qa;
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: qa.DefaultFirebaseOptions.currentPlatform,
  );
  await runner.main();
}
