import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gengo_app/models/phrase.dart';

import '../components/list_item.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});
  final List<Phrase> phrases = const [
    Phrase(
      enPhrase: 'Are you coming ',
      jpPhrase: 'Kimasu ka',
      sound: 'assets/sounds/phrases/are_you_coming.wav',
    ),
    Phrase(
      enPhrase: 'Dont forget to subscribe ',
      jpPhrase: 'Kōdoku suru koto o wasurenaide kudasai',
      sound: 'assets/sounds/phrases/dont_forget_to_subscribe.wav',
    ),
    Phrase(
      enPhrase: 'How are you feeling ',
      jpPhrase: 'Ogenkidesuka',
      sound: 'assets/sounds/phrases/how_are_you_feeling.wav',
    ),
    Phrase(
      enPhrase: 'I love anime ',
      jpPhrase: 'Watashi wa anime ga daisukidesu',
      sound: 'assets/sounds/phrases/i_love_anime.wav',
    ),
    Phrase(
      enPhrase: 'I love programming ',
      jpPhrase: 'Watashi wa puroguramingu ga daisukidesu',
      sound: 'assets/sounds/phrases/i_love_programming.wav',
    ),
    Phrase(
      enPhrase: 'Programming is easy ',
      jpPhrase: 'Puroguramingu wa kantandesu',
      sound: 'assets/sounds/phrases/programming_is_easy.wav',
    ),
    Phrase(
      enPhrase: 'What is your name ',
      jpPhrase: 'Namae wa nandesu ka',
      sound: 'assets/sounds/phrases/what_is_your_name.wav',
    ),
    Phrase(
      enPhrase: 'Where are you going',
      jpPhrase: 'Doko ni iku no',
      sound: 'assets/sounds/phrases/where_are_you_going.wav',
    ),
    Phrase(
      enPhrase: 'Yes im coming ',
      jpPhrase: 'Hai, ikimasu',
      sound: 'assets/sounds/phrases/yes_im_coming.wav',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Family Members'),
        backgroundColor: Colors.brown,
      ),
      body: ListView.builder(
        itemCount: phrases.length,
        itemBuilder: (context, num) {
          return PhraseItem(
            phrase: phrases[num],
            color: Colors.blue,
            itemType: 'family_members',
          );
        },
      ),
    );
  }
}
