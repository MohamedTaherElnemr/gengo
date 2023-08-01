import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../components/list_item.dart';
import '../models/item_model.dart';

class FamilyMembersPage extends StatelessWidget {
  const FamilyMembersPage({super.key});
  final List<Item> familyMembers = const [
    Item(
        image: 'assets/images/family_members/family_father.png',
        jpName: 'Chichioya',
        enName: 'Father',
        sound: 'assets/sounds/family_members/father.wav'),
    Item(
        image: 'assets/images/family_members/family_daughter.png',
        jpName: 'Musume',
        enName: 'Daughter',
        sound: 'assets/sounds/family_members/daughter.wav'),
    Item(
        image: 'assets/images/family_members/family_mother.png',
        jpName: 'Hahaoya',
        enName: 'Mother',
        sound: 'assets/sounds/family_members/mother.wav'),
    Item(
        image: 'assets/images/family_members/family_son.png',
        jpName: 'Musuko',
        enName: 'Son',
        sound: 'assets/sounds/family_members/son.wav'),
    Item(
        image: 'assets/images/family_members/family_grandfather.png',
        jpName: 'Ojīsan',
        enName: 'Grandfather',
        sound: 'assets/sounds/family_members/grand_father.wav'),
    Item(
        image: 'assets/images/family_members/family_grandmother.png',
        jpName: 'O bāchan',
        enName: 'Grandmother',
        sound: 'assets/sounds/family_members/grand_mother.wav'),
    Item(
        image: 'assets/images/family_members/family_older_brother.png',
        jpName: 'Ani',
        enName: 'Older Brother',
        sound: 'assets/sounds/family_members/older_bother.wav'),
    Item(
        image: 'assets/images/family_members/family_older_sister.png',
        jpName: 'Ane',
        enName: 'Older Sister',
        sound: 'assets/sounds/family_members/older_sister.wav'),
    Item(
        image: 'assets/images/family_members/family_younger_brother.png',
        jpName: 'Otōto',
        enName: 'Younger Brother',
        sound: 'assets/sounds/family_members/younger_brohter.wav'),
    Item(
        image: 'assets/images/family_members/family_younger_sister.png',
        jpName: '	Imōto',
        enName: 'Younger Sister',
        sound: 'assets/sounds/family_members/younger_sister.wav')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Family Members'),
        backgroundColor: Colors.brown,
      ),
      body: ListView.builder(
        itemCount: familyMembers.length,
        itemBuilder: (context, num) {
          return ListIem(
            item1: familyMembers[num],
            color: Color(0xff558B37),
            itemType: 'family_members',
          );
        },
      ),
    );
  }
}
