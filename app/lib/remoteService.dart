import 'models/job.dart';
import 'models/company.dart';

import 'dart:convert';
import 'package:http/http.dart' as http;

class RemoteService {

  String authority = 'api.itjobs.pt';
  String apiKey = '3b579078bfd604421212c16bc7729440';

  // limit value is hard-coded, maybe we change this later
  Future<List<Job>?> getJobs({int limit = 10000}) async {
    var client = http.Client();

    var uri = Uri.https(authority, '/job/list.json', {'api_key': apiKey, 'limit': limit.toString()});
    var response = await client.get(uri);

    if (response.statusCode == 200) {
      var json = jsonDecode(response.body);
      List<dynamic> results = json['results'];
      return results.map((jobJson) => Job.fromJson(jobJson)).toList();

    } else {
      throw Exception('Failed to load jobs');
    }
  }
}