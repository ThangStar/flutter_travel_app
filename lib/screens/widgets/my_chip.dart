import 'package:flutter/material.dart';
import 'package:travel_app/config/theme/color_schemes.dart';

class MyChip extends StatelessWidget {
  const MyChip({Key? key, required this.onChange, this.label = "DEFAULT", required this.isSelected}) : super(key: key);

  final Function(bool) onChange;
  final String label;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return RawChip(
      selected: isSelected,
      label: Text(label),
      backgroundColor: colorScheme(context).onTertiary,
      elevation: 0,
      onSelected: onChange,
    );
  }
}
const List<String> listChip = ["Tất cả", "Việt Nam", "JAPAN", "CHINA", "England"];