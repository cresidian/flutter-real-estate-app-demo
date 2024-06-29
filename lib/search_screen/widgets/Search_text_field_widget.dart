import 'package:flutter/material.dart';

import '../../core/app/resources/strings.dart';

class SearchTextField extends StatefulWidget {
  const SearchTextField({super.key});

  @override
  State<SearchTextField> createState() => _SearchTextFieldState();
}

class _SearchTextFieldState extends State<SearchTextField> {
  final searchFieldEditingController = TextEditingController();
  @override
  void dispose() {
    searchFieldEditingController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: searchFieldEditingController,
      decoration: InputDecoration(
        hintText: Strings.searchTextHint,
        fillColor: Colors.white, // Choose your desired color
        filled: true,
        prefixIcon: Icon(
          Icons.search_outlined,
          color: Colors.grey[600],
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40.0),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
