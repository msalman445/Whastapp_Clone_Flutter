import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/chat.dart';
import 'package:whatsapp/chat_item.dart';
import 'package:whatsapp/custom_colors.dart';

class CommunityItem extends StatelessWidget {
  const CommunityItem({
    super.key,
    required this.communityProfileImage,
    required this.communityName,
    required this.groupProfileImage,
    required this.groupName,
    required this.lastMessage,
    required this.sentDate,
  });

  final String communityProfileImage;
  final String communityName;
  final String groupProfileImage;
  final String groupName;
  final String lastMessage;
  final String sentDate;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ChatItem(
          chat: Chat(
            profileImagePath: communityProfileImage,
            senderName: communityName,
          ),
        ),

        Container(
          height: 1.5,
          width: MediaQuery.sizeOf(context).width,
          color: const Color.fromARGB(255, 236, 236, 236),
        ),

        ChatItem(
          chat: Chat(
            profileImagePath: groupProfileImage,
            senderName: groupName,
            lastMessage: lastMessage,
            sentDate: sentDate,
          ),
        ),

        Row(
          children: [
            Expanded(
              flex: 2,
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.keyboard_arrow_right_sharp,
                  color: CustomColors.clrGreyTextChat,
                ),
              ),
            ),
            Expanded(
              flex: 8,
              child: AutoSizeText(
                "View all",
                style: TextStyle(
                  color: CustomColors.clrGreyTextChat,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
