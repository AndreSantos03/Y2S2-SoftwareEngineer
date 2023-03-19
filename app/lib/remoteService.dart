import 'dart:convert';
import 'models/job.dart';
import 'package:http/http.dart' as http;
import 'package:dart_numerics/dart_numerics.dart' as numerics;

class RemoteService {

  String authority = 'api.itjobs.pt';
  String api_key = '3b579078bfd604421212c16bc7729440';

  // Future<List<Job>?> getJobsList({int limit = numerics.int64MaxValue, int? company, int? type, int? contract}) async{
  void getJobsList({int? limit, int? company, int? type, int? contract}) async {

    List<Job>? retList = [];

    final Map<String, dynamic> queryParameters = {
      'api_key': '3b579078bfd604421212c16bc7729440',
    };

    if (limit != null) queryParameters['limit'] = limit.toString();
    if (company != null) queryParameters['company'] = company.toString();
    if (type != null) queryParameters['type'] = type.toString();
    if (contract != null) queryParameters['contract'] = contract.toString();

    final response = await http.get(
        Uri.https(authority, 'job/list.json', queryParameters));

    if (response.statusCode == 200) {
      //200 is the OK response code
      dynamic json = jsonDecode(response.body);
      for (var i = 0; i < json['results'].length; i++) {
        Map<String, dynamic> jsonJob = json['results'][i];
        Job newJob = Job(
          id: jsonJob['id'],
          companyId: jsonJob['company']['id'],
          companyLogo: jsonJob['company']['logo'],
          companyName: jsonJob['company']['name'],
          title: jsonJob['title'],
          body: jsonJob['body'],
          ref: jsonJob['ref'],
          wage: jsonJob['wage'],
          typeId: jsonJob['typeId'],
          locationId: jsonJob['locationId'],
          allowRemote: jsonJob['allowRemote'],
          publishedAt: jsonJob['publishedAt'],
          updatedAt: jsonJob['updatedAt'],
          slug: jsonJob['slug'],
        );
        print(newJob.wage);
        retList.add(newJob);
      }
    }
    else {
      throw Exception('Request failed with status: ${response.statusCode}');
    }
  }
}