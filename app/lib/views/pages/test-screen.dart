import 'package:flutter/material.dart';
import 'package:myapp/models/job.dart';
import 'package:myapp/remoteService.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({Key? key}) : super(key: key);

  @override
  _TestScreenState createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  List<Job>? jobs;
  var isLoaded = false;

  @override
  void initState() {
    super.initState();

    // fetch data from API
    getData();
  }

  getData() async {
    // getJobsList is not yet functional
    // jobs = RemoteService().getJobsList();
    if (jobs != null) {
      setState(() {
        isLoaded = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Posts'),
        ),
        // Currently it is just printing 10 'Hi'. the idea is to test the API
        // so that we can see if it's working before using it in the actual UI
        body: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return Container(child: Text('Hi'));
            }));
  }
}
