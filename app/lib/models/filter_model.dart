import 'package:dart_numerics/dart_numerics.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:myapp/models/salary_model.dart';

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
}
