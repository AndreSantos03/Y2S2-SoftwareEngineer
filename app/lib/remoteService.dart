import 'models/job.dart';
import 'models/company.dart';

import 'dart:convert';
import 'package:http/http.dart' as http;

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
        Map<String, dynamic> jsonCompany = json['results'][i]['company'];
        
        Company jobCompany = Company(
          id: jsonCompany['id'],
          name: jsonCompany['name'],
          logo: jsonCompany['body'],
          description: jsonCompany['description'],
          phone: jsonCompany['phone'],
          email: jsonCompany['email'],
          url: jsonCompany['url'],
          slug: jsonCompany['slug'],
        );

        Job newJob = Job(
          id: jsonJob['id'],
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
          company: jobCompany,
        );
        retList.add(newJob);
      }
    }
    else {
      throw Exception('Request failed with status: ${response.statusCode}');
    }
  }
}