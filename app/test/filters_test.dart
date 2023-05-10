import 'package:flutter_test/flutter_test.dart';
import 'package:myapp/models/job.dart';
import 'package:myapp/models/technology_model.dart';
import 'package:myapp/remoteService.dart';
import 'package:myapp/models/filter_model.dart';
import 'package:myapp/models/salary_model.dart';
import 'package:myapp/models/technology_model.dart';

void main() {
  List<Job>? jobs;

  setUp(() {
    // Mock some jobs
    jobs = [
    Job(id: 0, wage: 30000, body: 'We want python experts', allowRemote: true),
    Job(id: 1, body: 'We want java experts', allowRemote: false),
    Job(id: 2, wage: 8500, body: 'We rob you!', allowRemote: false),
    Job(id: 3, wage: 50000, body: 'We want SQL experts', allowRemote: true),
    Job(id: 4, wage: 25000, body: 'We want JavaScript experts', allowRemote: false),
    Job(id: 5, body: 'Come work with US!', allowRemote: true),
    Job(id: 6, wage: 85500, body: 'Senior python developers wanted!', allowRemote: true),
    Job(id: 7, wage: 65000, body: 'We want java experts', allowRemote: false),
    Job(id: 8, wage: 24000, body: 'We want python experts', allowRemote: true),
    Job(id: 9, wage: 55000, body: 'We want javascript experts', allowRemote: true),
    ];
});


  // Test that if we apply filters, the jobs list is shorter (or equal - rarely)
  test("Test salaries filters", () async {
    List<Job>? jobsList = jobs;

    List<Salary> salaries = [];

    // Mock some filters
    salaries.add(Salary.salaries[0]); // 5000 - 10000
    salaries.add(Salary.salaries[4]); // 60000 - 80000

    Filter filters = Filter(salaryFilters: salaries);

    List<Job> filteredJobs = filters.applyFilter(jobs!);

    int? jobsLength = jobsList?.length;
    int filteredJobsLength = filteredJobs.length;

    print("Jobs: $jobsLength");
    print("Filtered jobs: $filteredJobsLength");

    expect(jobsLength! >= filteredJobsLength, isTrue);
  });
}
