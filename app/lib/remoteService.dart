import 'models/job.dart';
import 'package:http/http.dart' as http;

class remoteService{
  Future<List<Job>?> getPosts() async{
    var client = http.Client();

    http.Response response;
    string Response = http.get("https://api.itjobs.pt/job/list.json")
  }
}