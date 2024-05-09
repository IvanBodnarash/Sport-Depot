import 'package:flutter/material.dart';
import 'package:sport_depot/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:sport_depot/utils/constants/colors.dart';
import 'package:sport_depot/utils/helpers/helper_functions.dart';

class SChoiseChip extends StatelessWidget {
  const SChoiseChip({
    super.key,
    required this.text,
    required this.selected,
    this.onSelected,
  });

  final String text;
  final bool selected;
  final void Function(bool)? onSelected;

  @override
  Widget build(BuildContext context) {
    final isColor = SHelperFunctions.getColor(text) != null;
    return Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
      child: ChoiceChip(
        label: isColor ? const SizedBox() : Text(text),
        selected: selected,
        onSelected: onSelected,
        labelStyle: TextStyle(color: selected ? SColors.white : null),
        avatar: isColor ? SCircularContainer(width: 50, height: 50, backgroundColor: SHelperFunctions.getColor(text)!) : null,
        labelPadding: isColor ? const EdgeInsets.all(0) : null,
        padding: isColor ? const EdgeInsets.all(0) : null,
        shape: isColor ? const CircleBorder() : null,
        backgroundColor: isColor ? SHelperFunctions.getColor(text)! : null,
      ),
    );
  }
}
