import 'package:flutter/material.dart';
import 'package:whatsapp/chat.dart';
import 'package:whatsapp/chat_item.dart';

class CallsListView extends StatelessWidget {
  const CallsListView({super.key});

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

  final List<String> dateList = const [
    "February 26, 12 : 08 PM",
    "March 1, 01 : 15 PM",
    "March 5, 03 : 45 PM",
    "March 10, 11 : 30 AM",
    "March 15, 04 : 50 PM",
    "March 20, 10 : 05 AM",
    "March 25, 02 : 20 PM",
    "March 30, 05 : 35 PM",
    "April 2, 09 : 55 AM",
    "April 7, 01 : 00 PM",
    "April 12, 03 : 10 PM",
    "April 17, 11 : 40 AM",
    "April 22, 04 : 25 PM",
    "April 27, 10 : 45 AM",
    "May 2, 02 : 30 PM",
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: imagePaths.length,
      itemBuilder: (context, index) {
        return ChatItem(
          chat: Chat(
            profileImagePath: imagePaths[index],
            senderName: names[index],
            callTypeIcon: Icons.call_outlined,
            lastMessage: dateList[index],
            callStatusIcon:
                index % 3 == 0
                    ? Icons.call_missed_outgoing
                    : (index % 4 == 0 ? Icons.call_received : Icons.call_made),
            callStatusIconColor: index % 3 == 0 ? Colors.red : Colors.green,
          ),
        );
      },
    );
  }
}
