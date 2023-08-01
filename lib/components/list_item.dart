import 'package:flutter/material.dart';
import 'package:audiofileplayer/audiofileplayer.dart';
import 'package:gengo_app/models/phrase.dart';
import '../models/item_model.dart';

class ListIem extends StatelessWidget {
  const ListIem(
      {super.key,
      required this.item1,
      required this.color,
      required this.itemType});
  final Item item1;
  final Color color;
  final String itemType;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: 100,
      child: Row(
        children: [
          Container(color: Color(0xffFFF6DC), child: Image.asset(item1.image)),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  item1.jpName,
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                Text(
                  item1.enName,
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ],
            ),
          ),
          Spacer(
            flex: 1,
          ),
          IconButton(
            onPressed: () {
              Audio audio = Audio.load(item1.sound);
              audio.play();
            },
            icon: Icon(
              Icons.play_arrow,
              color: Colors.white,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}

class PhraseItem extends StatelessWidget {
  const PhraseItem(
      {super.key,
      required this.color,
      required this.itemType,
      required this.phrase});
  final Color color;
  final String itemType;
  final Phrase phrase;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: 100,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  phrase.jpPhrase,
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
                Text(
                  phrase.enPhrase,
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ],
            ),
          ),
          Spacer(
            flex: 1,
          ),
          IconButton(
            onPressed: () {
              Audio audio = Audio.load(phrase.sound);
              audio.play();
            },
            icon: Icon(
              Icons.play_arrow,
              color: Colors.white,
              size: 30,
            ),
          ),
        ],
      ),
    );
    ;
  }
}
