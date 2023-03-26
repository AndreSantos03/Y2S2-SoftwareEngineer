import 'package:flutter/material.dart';

class DistrictImage extends StatelessWidget {
  final int districtId;
  final VoidCallback? onTap;

  const DistrictImage({
    super.key,
    required this.districtId,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print(districtId);
        onTap?.call();
      },
      child: Image.asset(
        'assets/page-1/images/$districtId.png',
      )
    );
  }
}