import 'package:flutter/material.dart';
import 'package:whatsapp/chat.dart';
import 'package:whatsapp/chat_item.dart';
import 'package:whatsapp/community_item.dart';

class CommunitiesListView extends StatelessWidget {
  const CommunitiesListView({super.key});

  final List<String> communityNames = const [
    "Tech Enthusiasts",
    "Flutter Devs",
    "Fitness Freaks",
    "Gaming Zone",
    "Book Lovers",
  ];

  final List<String> groupNames = const [
    "Tech Talks",
    "Flutter Beginners",
    "Gym Motivation",
    "Esports Hub",
    "Readers' Corner",
  ];

  final List<String> lastMessages = const [
    "Check out the latest AI updates!",
    "Anyone tried Riverpod for state management?",
    "Stay consistent and results will follow!",
    "Who's excited for the new game release?",
    "Best book recommendations for March?",
  ];

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.sizeOf(context).width;
    final double height = MediaQuery.sizeOf(context).height;
    final double scaleFactor = (width + height) / 2;
    return ListView.separated(
      itemBuilder: (context, index) {
        if (index == 0) {
          return ChatItem(
            chat: Chat(
              profileImagePath: "assets/images/new_community.png",
              senderName: "New Community",
            ),
          );
        }
        return CommunityItem(
          communityProfileImage: "assets/images/community.png",
          communityName: communityNames[index],
          groupProfileImage: "assets/images/person.png",
          groupName: groupNames[index],
          lastMessage: lastMessages[index],
          sentDate: "01/01/25",
        );
      },
      separatorBuilder: (context, index) {
        return Container(
          height: 6,
          color: const Color.fromARGB(255, 236, 236, 236),
        );
      },
      itemCount: 5,
    );
  }
}
