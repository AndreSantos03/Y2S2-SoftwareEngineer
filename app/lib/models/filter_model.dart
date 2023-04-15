import 'package:equatable/equatable.dart';

class Filter extends Equatable {
  final List<int>
      salaryFilters; // size = 2 , ex: [5000, 10000] -> 5000 <= salaries < 10000

  Filter({
    this.salaryFilters = const <int>[],
  });

  Filter copyWith({
    List<int>? salaryFilters,
  }) {
    return Filter(
      salaryFilters: salaryFilters ?? this.salaryFilters,
    );
  }

  @override
  List<Object?> get props => [salaryFilters];
}
