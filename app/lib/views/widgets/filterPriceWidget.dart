import 'package:flutter/material.dart';
import 'package:myapp/utils.dart';
import 'package:provider/provider.dart';
import 'package:myapp/models/filter_model.dart';
import 'package:myapp/models/salary_model.dart';

class FilterPriceWidget extends StatefulWidget {
  FilterPriceWidget({Key? key}) : super(key: key);

  @override
  State<FilterPriceWidget> createState() => _FilterPriceWidgetState();
}


class _FilterPriceWidgetState extends State<FilterPriceWidget> {

  List<bool> isCheckedList = [];

  @override
  void initState() {
    super.initState();
    // Initialize the isCheckedList with false values for each checkbox
    isCheckedList = List.generate(Salary.salaries.length, (index) => false);
  }

  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery
        .of(context)
        .size
        .width;
    double screenHeight = MediaQuery
        .of(context)
        .size
        .height;

    List<Salary> salaries = Salary.salaries;

    Filter filterParameters = Provider.of<Filter>(context);

    return
      Padding(
        padding: EdgeInsets.only(top: screenHeight * 0.16),
        child: Stack(
            children: [
              Positioned(
                left: screenWidth * 0.06,
                child: Text(
                  'Salário',
                  textAlign: TextAlign.center,
                  style: SafeGoogleFont(
                    'Poppins',
                    fontSize: screenWidth * 0.06,
                    // Use percentage of screen width for font size
                    fontWeight: FontWeight.w700,
                    height: 1.3,
                    color: const Color(0xffffffff),
                  ),
                ),
              ),
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: salaries.length,
                  itemBuilder: (context, index) {
                    return Container(
                        width: double.infinity,
                        margin: EdgeInsets.only(top: screenHeight * 0.01),
                        padding: EdgeInsets.symmetric(
                          horizontal: screenWidth * 0.05,
                          vertical: 10,
                        ),
                        decoration:
                        BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: const Color.fromRGBO(255, 255, 255, 0.83),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              salaries[index].name,
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont(
                                'Poppins',
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                height: 1.5,
                                color: const Color(0x93050505),
                              ),
                            ),
                            SizedBox(
                              height: 25,
                              child: Checkbox(
                                value: isCheckedList[index],
                                onChanged: (bool? newValue) {

                                  setState(() {
                                    isCheckedList[index] = newValue ?? false;
                                  });

                                  // Update the salaryFilters list based on the checkbox value
                                  List<Salary> updatedSalaryFilters = List<Salary>.from(filterParameters.salaryFilters);
                                  if (newValue == true) {
                                    // Checkbox is checked, add the selected salary to the filters
                                    updatedSalaryFilters.add(salaries[index]);
                                    updatedSalaryFilters.remove(Salary.noFilterSalary[0]);
                                    print(updatedSalaryFilters); // Print the updated filters
                                  } else {
                                    // Checkbox is unchecked, remove the selected salary from the filters
                                    updatedSalaryFilters.remove(salaries[index]);
                                    print(updatedSalaryFilters);
                                  }

                                  // Update the filter parameters with the new salary filters
                                  Filter newFilter = filterParameters.copyWith(salaryFilters: updatedSalaryFilters);

                                  // Notify the listeners of the change
                                  print(index);
                                  Provider.of<Filter>(context, listen: false).updateFilter(newFilter, index, newValue ?? false);
                                },
                              ),
                            )
                          ],
                        ));
                  }),
            ]
        ),
      );
  }
}
