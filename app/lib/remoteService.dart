import 'models/job.dart';
import 'models/company.dart';

import 'dart:convert';
import 'package:http/http.dart' as http;

class RemoteService {

  String authority = 'api.itjobs.pt';
  String api_key = '3b579078bfd604421212c16bc7729440';

  Future<List<Job>?> getJobsList({int? limit, int? company, int? type, int? contract}) async {
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

      Map data = jsonDecode(response.body);
      for(var i in data['results']){
          print(data['results']);
        }
    }
  }
}