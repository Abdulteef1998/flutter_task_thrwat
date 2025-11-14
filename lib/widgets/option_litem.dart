import 'package:flutter/material.dart';
import 'package:quiz_app/widgets/not_selected_option_item.dart';
import 'package:quiz_app/widgets/selected_option_item.dart';

class OptionLitem extends StatelessWidget {
  const OptionLitem({
    super.key,
    required this.isSelected,
    required this.option,
  });
  final bool isSelected;
  final String option;

  @override
  Widget build(BuildContext context) {
    return isSelected
        ? SelectedOptionItem(option: option)
        : NotSelectedOptionItem(option: option);
  }
}
