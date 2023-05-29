import 'package:flutter/material.dart';
import 'package:travel_app/config/theme/color_schemes.dart';

class MyListChip extends StatefulWidget {
  const MyListChip({Key? key}) : super(key: key);

  @override
  State<MyListChip> createState() => _MyListChipState();
}

class _MyListChipState extends State<MyListChip> {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: List<Widget>.generate(5, (index) {
        return RawChip(label: Text("adá"),
          backgroundColor: colorScheme(context).onTertiary,
          elevation: 0,
          onSelected: (value) => {},);
      }),
    );
  }
}
