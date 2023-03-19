class Job{

  int id;
  int companyId;
  String companyName;
  String companyLogo;
  String title;
  String body;
  String ref;
  int wage;
  int typeId;
  int locationId;
  bool allowRemote;
  String publishedAt;
  String updatedAt;
  String slug;

  Job({
    this.id = 0,
    this.companyId = 0,
    this.companyName = '',
    this.companyLogo = '',
    this.title = "",
    this.body = "",
    this.ref = "",
    this.wage = 0,
    this.typeId = 0,
    this.locationId = 0,
    this.allowRemote = false,
    this.publishedAt = "",
    this.updatedAt = "",
    this.slug = "",
  });
}
