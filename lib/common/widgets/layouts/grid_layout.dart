import 'package:flutter/material.dart';
import 'package:sport_depot/utils/constants/sizes.dart';

class SGridLayout extends StatelessWidget {
  const SGridLayout({
    super.key,
    required this.itemCount,
    this.mainAxisSpacing,
    required this.itemBuilder,
  });

  final int itemCount;
  final double? mainAxisSpacing;
  final Widget? Function(BuildContext, int) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: itemCount,
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: SSizes.gridViewSpacing,
        crossAxisSpacing: SSizes.gridViewSpacing,
        mainAxisExtent: 288,
      ),
      itemBuilder: itemBuilder,
    );
  }
}
