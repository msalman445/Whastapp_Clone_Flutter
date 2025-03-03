import 'package:flutter/material.dart';
import 'package:whatsapp/custom_colors.dart';

class ProfileDialoge extends StatefulWidget {
  const ProfileDialoge({super.key, required this.imagePath});

  final String imagePath;

  @override
  State<ProfileDialoge> createState() => _ProfileDialogeState();
}

class _ProfileDialogeState extends State<ProfileDialoge> {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.sizeOf(context).width;
    // final double height = MediaQuery.sizeOf(context).height;

    return Center(
      child: Stack(
        children: [
          ConstrainedBox(
            constraints: BoxConstraints(
              minWidth: 70,
              maxWidth: 300,
              minHeight: 90,
              maxHeight: 400,
            ),
            child: SizedBox(
              width: width * 0.75,
              height: width * 0.92,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    color: Colors.lightBlue,
                    child: Image.asset(widget.imagePath),
                  ),
                  Container(
                    color: Colors.white,
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: width * 0.01,
                        bottom: width * 0.01,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            flex: 1,
                            child: CustomIconButton(
                              iconData: Icons.chat_outlined,
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: CustomIconButton(
                              iconData: Icons.call_outlined,
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: CustomIconButton(
                              iconData: Icons.videocam_outlined,
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: CustomIconButton(
                              iconData: Icons.info_outline,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({super.key, required this.iconData});
  final IconData? iconData;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: Icon(iconData, color: CustomColors.clrGreen),
    );
  }
}
