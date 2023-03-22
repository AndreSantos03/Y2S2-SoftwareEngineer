import 'company.dart';

class Job{

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

  factory Job.fromJson(dynamic json){
    Map<String, dynamic> jsonCompany = json['company'];

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

    return Job(
      id: json['id'],
      title: json['title'],
      body: json['body'],
      ref: json['ref'],
      wage: json['wage'],
      typeId: json['typeId'],
      locationId: json['locationId'],
      allowRemote: json['allowRemote'],
      publishedAt: json['publishedAt'],
      updatedAt: json['updatedAt'],
      slug: json['slug'],
      company: jobCompany,
    );
  }

  static List<Job> jobsFromSnapshot(List snapshot){
    return snapshot.map((data){
      return Job.fromJson(data);
    }).toList();
  }
}
