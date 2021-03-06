import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:thankfulness/App/core/config.dart';
import 'package:thankfulness/App/injection_container.dart';
import 'package:thankfulness/firebase_options.dart';
import 'App/app.dart';


void main() async {
  Config.appFlavor = Flavor.production;
  configureDependencies();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}
