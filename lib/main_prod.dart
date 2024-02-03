import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_flavor_setup/firebase_options.dart' as prod;

import 'flavors.dart';

import 'main.dart' as runner;

Future<void> main() async {
  F.appFlavor = Flavor.prod;
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: prod.DefaultFirebaseOptions.currentPlatform,
  );
  await runner.main();
}
