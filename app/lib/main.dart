import 'package:flutter/material.dart';
import 'package:myapp/utils.dart';
import 'package:myapp/views/pages/filter-screen.dart';
import 'package:myapp/views/pages/map-screen.dart';
import 'package:myapp/views/pages/discrict-screen.dart';
import 'package:myapp/views/pages/sign-in-screen.dart';
import 'package:myapp/views/pages/test-screen.dart';
import 'package:myapp/models/job.dart';
import 'package:provider/provider.dart';
import 'package:myapp/models/filter_model.dart';
import 'package:myapp/models/salary_model.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

Future main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  print("Aqui");
  // Fetch jobs and create JobsProvider instance
  final jobsProvider = JobsProvider();
  jobsProvider.fetchJobs();


  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<JobsProvider>.value(
          value: jobsProvider,
        ),
        ChangeNotifierProvider<Filter>(
          create: (context) => Filter(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override

  Widget build(BuildContext context) {

    return MaterialApp(

      title: 'Flutter',
      debugShowCheckedModeBanner: false,
      scrollBehavior: MyCustomScrollBehavior(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SignInScreen(),
    );
  }
}
