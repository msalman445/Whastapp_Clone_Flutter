import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/chat.dart';
import 'package:whatsapp/custom_colors.dart';
import 'package:whatsapp/profile_dialoge.dart';

class ChatItem extends StatefulWidget {
  const ChatItem({super.key, required this.chat});
  final Chat chat;

  @override
  State<ChatItem> createState() => _ChatItemState();
}

class _ChatItemState extends State<ChatItem> {
  final TextStyle messageTextStyle = const TextStyle(
    color: CustomColors.clrGreyTextChat,
    fontWeight: FontWeight.w500,
    fontSize: 14,
  );

  double opacity = 0;

  void _showDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return TweenAnimationBuilder(
          tween: Tween<double>(begin: 0, end: 1),
          duration: const Duration(milliseconds: 300),
          builder: (context, value, child) {
            return Transform.scale(scale: value, child: child);
          },
          child: ProfileDialoge(imagePath: widget.chat.profileImagePath),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.sizeOf(context).width;
    final double height = MediaQuery.sizeOf(context).height;

    return Padding(
      padding: EdgeInsets.only(top: height * 0.01),
      child: SizedBox(
        width: width,
        height: 60,
        child: Row(
          children: [
            Expanded(
              flex: 18,
              child: GestureDetector(
                onTap: () {
                  _showDialog();
                },
                child: Image.asset(
                  widget.chat.profileImagePath,
                  width: 40,
                  height: 40,
                ),
              ),
            ),
            Expanded(
              flex: 59,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AutoSizeText(
                    widget.chat.senderName.length > 20
                        ? "${widget.chat.senderName.substring(0, 20)} ..."
                        : widget.chat.senderName,
                    maxLines: 1,

                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      if (widget.chat.lastMessage != null)
                        Row(
                          children: [
                            if (widget.chat.callStatusIcon != null)
                              Icon(
                                widget.chat.callStatusIcon,
                                color: widget.chat.callStatusIconColor,
                                size: 20,
                              ),

                            SizedBox(width: 3),

                            AutoSizeText(
                              (widget.chat.lastMessage!.length > 25
                                  ? "${widget.chat.lastMessage!.substring(0, 20)} ..."
                                  : widget.chat.lastMessage)!,
                              maxLines: 1,
                              minFontSize: 10,
                              style: messageTextStyle,
                            ),
                          ],
                        ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 20,
              child: Builder(
                builder: (context) {
                  if (widget.chat.callTypeIcon == null) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        if (widget.chat.sentDate != null)
                          AutoSizeText(
                            maxLines: 1,
                            widget.chat.sentDate!,
                            style: messageTextStyle,
                          ),

                        if (widget.chat.noOfMessages != null)
                          Container(
                            width: 20,
                            height: 20,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: widget.chat.noOfMessagesColor,
                            ),
                            child: Text(
                              widget.chat.noOfMessages!,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 11,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                      ],
                    );
                  } else {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(widget.chat.callTypeIcon),
                        ),
                      ],
                    );
                  }
                },
              ),
            ),
            Spacer(flex: 3),
          ],
        ),
      ),
    );
  }
}
