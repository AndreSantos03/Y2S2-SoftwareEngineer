import 'package:flutter/material.dart';
import 'package:myapp/utils.dart';
import 'package:myapp/views/pages/filter-screen.dart';
import 'package:myapp/views/pages/map-screen.dart';
import 'package:myapp/views/pages/discrict-screen.dart';
import 'package:myapp/views/pages/test-screen.dart';
import 'package:myapp/models/job.dart';
import 'package:provider/provider.dart';

void main() {
  // Fetch jobs and create JobsProvider instance
  final jobsProvider = JobsProvider();
  jobsProvider.fetchJobs();

  runApp(
    ChangeNotifierProvider<JobsProvider>.value(
      value: jobsProvider,
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
      home: const FilterScreen(),
    );
  }
}
