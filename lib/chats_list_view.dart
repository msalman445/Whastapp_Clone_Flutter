import 'package:flutter/material.dart';
import 'package:whatsapp/chat.dart';
import 'package:whatsapp/chat_item.dart';

class ChatsListView extends StatelessWidget {
  const ChatsListView({super.key});

  final String person1 = "assets/images/person1.png";
  final String person2 = "assets/images/person2.png";
  final String person3 = "assets/images/person3.png";
  final String person4 = "assets/images/person4.png";
  final String person6 = "assets/images/person6.png";
  final String person = "assets/images/person.png";

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
    "Rafi Ul-Darjat",
    "Shah Jahan II",
    "Muhammad Shah",
    "Ahmad Shah Bahadur",
    "Alamgir II",
    "Shah Jahan III",
  ];

  final List<String> lastMessages = const [
    "Babur: Talwar se taqdeer badal di!",
    "Humayun: Girne wale ko uthna parta hai!",
    "Akbar: Ilm aur insaf sab se barh kar!",
    "Jahangir: Adal se badshahi qayam rehti hai!",
    "Shah Jahan: Yaadgaar imarat se zyada izzat zaroori hai!",
    "Aurangzeb: Hukumat ibadat hai, na ke shauq!",
    "Bahadur Shah I: Saltanat qismat se milti hai!",
    "Jahandar Shah: Kamzoor iradon se hukumat nahi hoti!",
    "Farrukhsiyar: Gaddari ka anjaam sirf tabahi hai!",
    "Rafi Ul-Darjat: Waqt kisi ka sathi nahi!",
    "Shah Jahan II: Naam bada, magar daulat nahi!",
    "Muhammad Shah: Lalach saltanat ko khatam karti hai!",
    "Ahmad Shah Bahadur: Taqat bina aqal, tabahi ka sabab!",
    "Alamgir II: Takht ka haq sirf insaf par hai!",
    "Shah Jahan III: Waqt badshahon ka imtihaan leta hai!",
  ];

  final List<String> dates = const [
    "25/03/25",
    "19/03/25",
    "13/03/25",
    "07/03/25",
    "01/03/25",
    "24/02/25",
    "18/02/25",
    "12/02/25",
    "06/02/25",
    "31/01/25",
    "25/01/25",
    "19/01/25",
    "13/01/25",
    "07/01/25",
    "01/01/25",
  ];

  final List<String> noOfMessagesList = const ["1", "2", "3", "2"];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: List.generate(15, (index) {
        return ChatItem(
          chat: Chat(
            profileImagePath: imagePaths[index],
            senderName: names[index],
            lastMessage: lastMessages[index],
            sentDate: dates[index],
            noOfMessages: index <= 3 ? noOfMessagesList[index] : null,
          ),
        );
      }),
    );
  }
}
