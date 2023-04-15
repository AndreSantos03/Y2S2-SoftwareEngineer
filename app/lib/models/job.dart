import 'package:flutter/cupertino.dart';
import 'company.dart';
import 'package:myapp/remoteService.dart';

class Job {
  // ? -> optional / nullable
  int id;
  String? title;
  String? body;
  String? ref;
  int? wage;
  int? typeId;
  int? locationId;
  bool? allowRemote;
  String? publishedAt;
  String? updatedAt;
  String? slug;
  Company? company;

  Job({
    required this.id,
    this.title,
    this.body,
    this.ref,
    this.wage,
    this.typeId,
    this.locationId,
    this.allowRemote,
    this.publishedAt,
    this.updatedAt,
    this.slug,
    this.company,
  });

  factory Job.fromJson(Map<String, dynamic> json) {
    return Job(
      id: json['id'],
      title: json['title'] ,
      body: json['body'],
      ref: json['ref'].toString(), // for some reason ref sometimes is int :/
      wage: json['wage'],
      typeId: json['type_id'],
      locationId: json['location_id'],
      allowRemote: json['allow_remote'],
      publishedAt: json['published_at'],
      updatedAt: json['updated_at'],
      slug: json['slug'],
      company: Company.fromJson(json['company'] as Map<String, dynamic>),
    );
  }
}


class Company {
  int? id;
  String? name;
  String? logoUrl;

  Company({
    this.id,
    this.name,
    this.logoUrl,
  });

  factory Company.fromJson(Map<String, dynamic> json) {
    return Company(
      id: json['id'],
      name: json['name'],
      logoUrl: json['logo_url'],
    );
  }
}

class JobsProvider with ChangeNotifier {
  List<Job> _jobs = [];

  List<Job> get jobs => _jobs;

  set jobs(List<Job> value) {
    _jobs = value;
    notifyListeners();
  }

  RemoteService remoteService = RemoteService();

  Future<void> fetchJobs() async {
    List<Job>? fetchedJobs = await remoteService.getJobs();
    _jobs = fetchedJobs!;

    print('jobs loaded');
  }
}
