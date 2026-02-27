import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:spotify/firebase_options.dart';
import 'package:spotify/spotify_app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Make Mobile Only Vertical
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  // Initialize FireBase
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  // Theming Of App
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: HydratedStorageDirectory(
      (await getApplicationDocumentsDirectory()).path,
    ),
    //
  );
  runApp(const SpotifyApp());
}
