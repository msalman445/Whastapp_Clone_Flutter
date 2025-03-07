import 'package:flutter/material.dart';

class CallsMenuAnchor extends StatefulWidget {
  const CallsMenuAnchor({super.key});

  @override
  State<CallsMenuAnchor> createState() => _CallsMenuAnchorState();
}

class _CallsMenuAnchorState extends State<CallsMenuAnchor> {
  void _onMenuSelected(Items item) {
    switch (item) {
      case Items.clear:
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text(item.name)));
        break;
      case Items.settings:
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text(item.name)));
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MenuAnchor(
      style: MenuStyle(
        backgroundColor: WidgetStatePropertyAll<Color>(Colors.white),
      ),
      menuChildren: [
        MenuItemButton(
          onPressed: () {
            _onMenuSelected(Items.clear);
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Clear call log"),
          ),
        ),
        MenuItemButton(
          onPressed: () {
            _onMenuSelected(Items.settings);
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Settings"),
          ),
        ),
      ],
      builder: (context, controller, child) {
        return IconButton(
          onPressed: () {
            if (controller.isOpen) {
              controller.close();
            } else {
              controller.open();
            }
          },
          icon: Icon(Icons.more_vert),
        );
      },
    );
  }
}

enum Items { clear, settings }
