import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/chat.dart';
import 'package:whatsapp/chat_item.dart';
import 'package:whatsapp/custom_colors.dart';
import 'package:whatsapp/status.dart';
import 'package:whatsapp/status_card.dart';

class UpdatesListView extends StatelessWidget {
  const UpdatesListView({super.key});

  final List<String> statusImages = const [
    "assets/images/status1.jpg",
    "assets/images/status2.jpg",
    "assets/images/status3.jpg",
    "assets/images/status4.jpg",
    "assets/images/status5.jpg",
    "assets/images/status6.jpg",
    "assets/images/status7.jpg",
    "assets/images/status8.jpg",
  ];

  final List<String> names = const [
    "Babar",
    "Humayun",
    "Akbar",
    "Jahangir",
    "Shah Jahan",
    "Aurangzeb",
    "Bahadur Shah I",
    "Jahandar Shah",
    "Farrukhsiyar",
  ];

  final List<String> imagePaths = const [
    "assets/images/person1.png",
    "assets/images/person2.png",
    "assets/images/person3.png",
    "assets/images/person4.png",
    "assets/images/person6.png",
    "assets/images/person.png",
    "assets/images/person1.png",
    "assets/images/person2.png",
    "assets/images/person3.png",
    "assets/images/person4.png",
    "assets/images/person6.png",
    "assets/images/person.png",
    "assets/images/person1.png",
    "assets/images/person2.png",
    "assets/images/person3.png",
  ];

  final TextStyle textStyle = const TextStyle(
    color: Color.fromARGB(255, 70, 70, 70),
    fontWeight: FontWeight.bold,
    fontSize: 22,
  );

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.sizeOf(context).width;
    final double height = MediaQuery.sizeOf(context).height;
    final double scaleFactor = (width + height) / 2;
    return ListView.builder(
      itemCount: 12,
      itemBuilder: (context, index) {
        if (index == 0) {
          return Padding(
            padding: const EdgeInsets.all(15),
            child: AutoSizeText("Status", style: textStyle),
          );
        } else if (index == 1) {
          return ConstrainedBox(
            constraints: BoxConstraints(maxHeight: 150, minHeight: 130),
            child: SizedBox(
              height: scaleFactor * 0.27,
              width: MediaQuery.sizeOf(context).width,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: StatusCard(
                        status: Status(
                          profileImage: imagePaths[index],
                          profileName: "Add Status",
                        ),
                      ),
                    );
                  } else {
                    return StatusCard(
                      status: Status(
                        profileImage: imagePaths[index],
                        statusImage: statusImages[index],
                        profileName: names[index],
                        isStatusActive: index >= 3 ? false : true,
                      ),
                    );
                  }
                },
                separatorBuilder: (context, index) => SizedBox(width: 8),
                itemCount: statusImages.length,
              ),
            ),
          );
        } else if (index == 2) {
          return Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(15),
                child: AutoSizeText("Channels", style: textStyle),
              ),

              Padding(
                padding: const EdgeInsets.all(15),
                child: AutoSizeText(
                  "Explore >",
                  style: TextStyle(
                    color: CustomColors.clrGreen,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          );
        } else {
          return ChatItem(
            chat: Chat(
              profileImagePath: imagePaths[index],
              senderName: "Dawn News",
              lastMessage: "New Zealand will play in India",
              sentDate: "Yesterday",
              noOfMessages: "",
            ),
          );
        }
      },
    );
  }
}
