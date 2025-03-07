import 'package:flutter/material.dart';
import 'package:whatsapp/custom_colors.dart';

typedef UpdateIndex = void Function(int)?;

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({
    super.key,
    required this.selectedIndex,
    required this.updateIndex,
  });

  final int selectedIndex;
  final UpdateIndex updateIndex;

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      selectedIndex: selectedIndex,
      onDestinationSelected: updateIndex,
      backgroundColor: Colors.white,
      surfaceTintColor: const Color(0xFFCECECE),
      destinations: [
        NavigationDestination(
          icon: Icon(Icons.chat_outlined),
          selectedIcon: Icon(Icons.chat, color: CustomColors.clrGreen),
          label: "Chats",
        ),
        NavigationDestination(
          icon: Icon(Icons.update_outlined),
          selectedIcon: Icon(Icons.update, color: CustomColors.clrGreen),

          label: "Updates",
        ),
        NavigationDestination(
          icon: Icon(Icons.group_outlined),
          selectedIcon: Icon(Icons.group, color: CustomColors.clrGreen),

          label: "Communities",
        ),
        NavigationDestination(
          icon: Icon(Icons.call_outlined),
          selectedIcon: Icon(Icons.call, color: CustomColors.clrGreen),
          label: "Calls",
        ),
      ],
    );
  }
}
