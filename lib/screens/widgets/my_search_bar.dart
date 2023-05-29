import 'package:flutter/material.dart';

class MySearchBar extends StatelessWidget {
  final Function(String) onChanged;
  final String txtSearch;
  const MySearchBar({Key? key, required this.txtSearch, required this.onChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SearchBar(
      elevation: const MaterialStatePropertyAll(0),
      controller: TextEditingController(text: txtSearch),
      onChanged: onChanged,
      leading: IconButton(onPressed: () {

      }, icon: const Icon(Icons.location_on_outlined)),
      trailing: [
        IconButton(onPressed: () {
          
        }, icon: Icon(Icons.search)),
        IconButton(onPressed: () {

        }, icon: Icon(Icons.more_horiz_outlined)),
      ],
    );
  }
}
