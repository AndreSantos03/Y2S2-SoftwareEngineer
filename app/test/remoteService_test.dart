import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:mockito/annotations.dart';
import 'package:myapp/models/job.dart';
import 'package:myapp/remoteService.dart';

void main() {
  RemoteService remoteService = RemoteService();

  test("API Call is Working", () async {
    final jobs = await remoteService.getJobs(q: "Porto");
    expect(jobs, isNotNull);
    expect(jobs, isInstanceOf<List<dynamic>>());
  });

  test("District Search is working", () async {
    List<Job>? aveiroList = await remoteService.getJobs(q: "Aveiro");


    aveiroList?.forEach((obj) {
      print(obj.locationId?.any((loc) => loc['id'] == "1"));
      print('Job Title: ${obj.title}');
      print('Location ID:');
      obj.locationId?.forEach((loc) => print('  id: ${loc['id']}'));
      print('Job Description: ${obj.id}');
      print('-------------------------------------');
    });


    expect(
        aveiroList?.every(
                (obj) => obj.locationId != null && obj.locationId!.any((loc) => loc['id'] == "1")
        ),
        isTrue
    );
  });
}