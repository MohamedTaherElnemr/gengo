import 'package:flutter/material.dart';

class Item {
  final String sound;
  final String image;
  final String enName;
  final String jpName;
  const Item(
      {required this.image,
      required this.jpName,
      required this.enName,
      required this.sound});
}
