import 'package:flutter/material.dart';


class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: SearchBar(
              
              leading: Padding(
                padding: EdgeInsets.only(left: 20),
                child: Icon(Icons.search),

              ),
              hintText: 'Arama',
            ),
          ),
        ),
      ),
    );
  }
}
