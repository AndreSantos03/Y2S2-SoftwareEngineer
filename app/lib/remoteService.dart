import 'dart:convert';

import 'models/job.dart';
import 'package:http/http.dart' as http;

class RemoteService{
  // Future<List<Job>?> getPosts() async{
  void getPosts() async{
    var client = http.Client();

    final response = await http.get
      (
        Uri.parse("https://api.itjobs.pt/job/list.json"),
        headers:
        {
          'api_key': '3b579078bfd604421212c16bc7729440',
        }
    );

    if(response.statusCode == 200){
      //200 is the OK response code
      dynamic json = jsonDecode(response.body);
      for(int i = 0; json['results'].length;i++){
        
      }
    }
    else{
      throw Exception('Request failed with status: ${response.statusCode}');
    }

  }
}