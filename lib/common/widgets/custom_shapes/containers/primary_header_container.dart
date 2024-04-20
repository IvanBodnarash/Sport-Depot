import 'package:flutter/material.dart';
import 'package:sport_depot/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:sport_depot/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:sport_depot/utils/constants/colors.dart';

class SPrimaryHeaderContainer extends StatelessWidget {
  const SPrimaryHeaderContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SCurvedEdgeWidget(
      child: Container(
        color: SColors.primary,
        padding: const EdgeInsets.all(0),
        child: SizedBox(
          height: 400,
          child: Stack(children: [
            Positioned(
                top: -150,
                right: -250,
                child: SCircularContainer(
                    backgroundColor: SColors.textWhite.withOpacity(0.1))),
            Positioned(
                top: 100,
                right: -300,
                child: SCircularContainer(
                    backgroundColor: SColors.textWhite.withOpacity(0.1))),
          ]),
        ),
      ),
    );
  }
}