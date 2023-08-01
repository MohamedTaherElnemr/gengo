import 'package:flutter/material.dart';
import 'package:gengo_app/screens/colors_page.dart';
import 'package:gengo_app/screens/family_members_page.dart';
import 'package:gengo_app/screens/numbers_page.dart';
import 'package:gengo_app/screens/phrases_page.dart';

import '../components/category.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFEF6D8),
      appBar: AppBar(
        title: Text('Gengo'),
        backgroundColor: Colors.brown,
      ),
      body: Column(
        children: [
          Category(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return NumbersPage();
              }));
            },
            color: Colors.orange.shade300,
            text: 'Numbers',
          ),
          Category(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return FamilyMembersPage();
              }));
            },
            color: Colors.green,
            text: 'Family Members',
          ),
          Category(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return ColorsPage();
              }));
            },
            color: Color(0xff793597),
            text: 'Colors',
          ),
          Category(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return PhrasesPage();
              }));
            },
            color: Colors.blue,
            text: 'Phrases',
          )
        ],
      ),
    );
  }
}
