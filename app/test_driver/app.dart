import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_driver/driver_extension.dart';
import 'package:myapp/main.dart';
import 'package:myapp/models/filter_model.dart';
import 'package:myapp/models/job.dart';
import 'package:myapp/models/languages_remote_selection_model.dart';
import 'package:provider/provider.dart';

void main() async {
  enableFlutterDriverExtension();
  WidgetsFlutterBinding.ensureInitialized();
  final jobsProvider = JobsProvider();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<JobsProvider>.value(
          value: jobsProvider,
        ),
        ChangeNotifierProvider<Filter>(
          create: (context) => Filter(),
        ),
        ChangeNotifierProvider(create: (_) => LanguageSelectionModel()),
      ],
      child: const MyApp(),
    ),
  );
}