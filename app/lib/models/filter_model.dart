import 'package:flutter/cupertino.dart';
import 'package:myapp/models/salary_model.dart';
import 'package:myapp/models/job.dart';

class Filter extends ChangeNotifier {
  late List<Salary> salaryFilters;
  late bool remote;

  Filter({List<Salary>? salaryFilters, bool? remote}) {
    this.salaryFilters = salaryFilters ?? Salary.noFilterSalary;
    this.remote = remote ?? false;
  }

  Filter copyWith({
    List<Salary>? salaryFilters,
    bool? remote,
  }) {
    return Filter(
      salaryFilters: salaryFilters ?? this.salaryFilters,
      remote: remote ?? this.remote,
    );
  }

  void updateFilter(Filter newFilter, int index, bool checked) {
    // Update the remote filter parameter
    remote = newFilter.remote;

    if (checked) {
      // Checkbox is checked, add the selected salary to the filters
      salaryFilters.add(Salary.salaries[index]);
    } else {
      // Checkbox is unchecked, remove the selected salary from the filters
      salaryFilters.remove(Salary.salaries[index]);
    }

    // Notify the listeners of the change
    notifyListeners();
  }

  // Applies the filters in a list of jobs
  List<Job> applyFilter(List<Job> jobs) {
    // salary filter
    List<Job> newJobs = [];

    for (var salary in salaryFilters) {
      if (salary.id != 0) {
        for (var job in jobs) {
          if (job.wage == null) continue;
          if (job.wage! >= salary.salaryRange[0] &&
              job.wage! < salary.salaryRange[1]) {
            newJobs.add(job);
          }
        }
      }
    }

    // If salary id 0 is applied, it returns all jobs. This is because there are a lot of jobs without salary
    if (salaryFilters.length == 1) newJobs = jobs;

    return newJobs;
  }
}
