import 'dart:convert';

import 'models/job.dart';
import 'package:http/http.dart' as http;

class RemoteService{

  String authority = 'api.itjobs.pt';

  // Future<List<Job>?> getPosts() async{
  void getPosts() async{

    final queryParameters = {
      'api_key' : '3b579078bfd604421212c16bc7729440',
    };

    final response = await http.get(Uri.https(authority,'job/list.json', queryParameters));

    if(response.statusCode == 200){
      //200 is the OK response code
      dynamic json = jsonDecode(response.body);
      for(var i = 0; json['results'].length;i++){
        print('yey');
      }
    }
    else{
      throw Exception('Request failed with status: ${response.statusCode}');
    }

  }
}