import 'package:flutter/material.dart';
import 'package:flutter_102_calculatrice/common/widgets/custom_card.dart';
import 'package:flutter_102_calculatrice/config/friends_provider.dart';
import 'package:flutter_102_calculatrice/features/profil/models/custom_card_model.dart';
import 'package:provider/provider.dart';

class FriendSuggestions extends StatefulWidget {
  const FriendSuggestions({super.key});

  @override
  State<FriendSuggestions> createState() => _FriendSuggestionsState();
}

class _FriendSuggestionsState extends State<FriendSuggestions> {
  @override
  Widget build(BuildContext context) {
    return Consumer<FriendsProvider>(
        builder: (context, friendsProvider, child) {
      return Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: friendsProvider.friends.map((friend) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: CustomCard(model: friend),
                );
              }).toList(),
            ),
          ),
        ],
      );
    });
  }
}
