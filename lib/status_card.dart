import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/custom_colors.dart';
import 'package:whatsapp/status.dart';

class StatusCard extends StatelessWidget {
  const StatusCard({super.key, required this.status});

  final Status status;

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.sizeOf(context).width;
    final double height = MediaQuery.sizeOf(context).height;
    final double scaleFactor = (width + height) / 2;
    return Stack(
      children: [
        ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: 100,
            minWidth: 80,
            maxHeight: 150,
            minHeight: 130,
          ),
          child: Container(
            width: scaleFactor * 0.17,
            height: scaleFactor * 0.27,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(scaleFactor * 0.03),
            ),
            child:
                status.statusImage != null
                    ? ClipRRect(
                      borderRadius: BorderRadius.circular(scaleFactor * 0.03),
                      child: Image.asset(
                        status.statusImage!,
                        fit: BoxFit.cover,
                      ),
                    )
                    : null,
          ),
        ),
        Positioned(
          top: scaleFactor * 0.012,
          left: scaleFactor * 0.012,
          child: Container(
            width: 45,
            height: 45,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border.all(
                color:
                    status.isStatusActive
                        ? CustomColors.clrGreen
                        : Colors.white,
                width: 2,
              ),
              shape: BoxShape.circle,
            ),
            child: Padding(
              padding: EdgeInsets.all(2),
              child: Image.asset(status.profileImage),
            ),
          ),
        ),

        Positioned(
          bottom: scaleFactor * 0.015,
          left: scaleFactor * 0.013,
          child: SizedBox(
            width: scaleFactor * 0.14,
            child: AutoSizeText(
              status.profileName,
              maxFontSize: 20,
              minFontSize: 14,
              maxLines: 2,
              style: TextStyle(
                fontSize: scaleFactor * 0.03,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
