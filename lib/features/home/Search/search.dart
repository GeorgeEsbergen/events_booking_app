import 'package:book_withmyself/features/home/Search/search_body.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  static const routeName = "SearchScreen";
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SearchBody(),
    );
  }
}
