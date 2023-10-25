import 'package:complete/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'app.dart';

// TODO(codelab user): Get API key
const clientId = 'AIzaSyCOPJGFE0YhX71djJr1f1aQ2AAn_zS30_Q';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}
