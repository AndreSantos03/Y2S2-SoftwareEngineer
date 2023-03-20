import 'company.dart';

class Job{

  int? id;
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

  Job({this.id,
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
}
