import 'package:flutter/material.dart';

import '../widgets/district.dart';

class Test extends StatelessWidget {
  const Test({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final districtIdList = [1,3,4,5,6,8,10,11,12,13,14,16,17,18,20,21,22];

    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text('District List'),
      ),
      body: ListView.builder(
        itemCount: districtIdList.length,
        itemBuilder: (context, index) {
          final districtId = districtIdList[index];

          return DistrictImage(
            districtId: districtId,
          );
        },
      ),
    );
  }
}
