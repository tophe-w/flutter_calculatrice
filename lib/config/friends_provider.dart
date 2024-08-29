import 'package:flutter/material.dart';
import 'package:flutter_102_calculatrice/features/profil/models/custom_card_model.dart';

class FriendsProvider with ChangeNotifier {
  
  final List<CustomCardModel> _friends = [
    CustomCardModel(
      avatar: Image.asset('lib/assets/images/avatarF6.png'),
      name: 'Jane',
      texte: 'One of your contacts',
    ),
    CustomCardModel(
      avatar: Image.asset('lib/assets/images/licorne1.png'),
      name: 'Alice',
      texte: 'Your colleague from work',
    ),
    CustomCardModel(
      avatar: Image.asset('lib/assets/images/chat.png'),
      name: 'Bob',
      texte: 'Friend from the gym',
    ),
    CustomCardModel(
      avatar: Image.asset('lib/assets/images/lapin.png'),
      name: 'Charlie',
      texte: 'Classmate from college',
    ),
    CustomCardModel(
        avatar: Image.asset('lib/assets/images/avatarF15.png'),
        name: 'Diana',
        texte: 'Neighbor from your building'),
    CustomCardModel(
      avatar: Image.asset('lib/assets/images/avatarH14.png'),
      name: 'Edward',
      texte: 'Business partner',
    )
  ];

  List<CustomCardModel> get friends => _friends;

  void addFriend(CustomCardModel friend) {
    _friends.insert(0, friend);
    notifyListeners();
  }

  void updateFriend(CustomCardModel oldFriend, CustomCardModel newFriend) {
    final index = _friends.indexOf(oldFriend);
    if (index != -1) {
      _friends[index] = newFriend;
      notifyListeners();
    }
  }
}
