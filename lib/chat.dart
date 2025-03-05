// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/material.dart';

class Chat {
  String profileImagePath;
  String senderName;
  String? sentDate;
  String? lastMessage;
  String? noOfMessages;
  IconData? callStatusIcon;
  IconData? callTypeIcon;
  Color? callStatusIconColor;
  Color? noOfMessagesColor;

  Chat({
    required this.profileImagePath,
    required this.senderName,
    this.sentDate,
    this.lastMessage,
    this.noOfMessages,
    this.callStatusIcon,
    this.callTypeIcon,
    this.callStatusIconColor,
    this.noOfMessagesColor = Colors.transparent,
  }) : assert(
         ((callTypeIcon != null) &&
                 ((noOfMessages == null) && (sentDate == null))) ||
             (callTypeIcon == null),
       );

  Chat copyWith({
    String? profileImagePath,
    String? senderName,
    String? sentDate,
    String? lastMessage,
    String? noOfMessages,
    IconData? callStatusIcon,
    IconData? callTypeIcon,
    Color? callStatusIconColor,
    Color? noOfMessagesColor,
  }) {
    return Chat(
      profileImagePath: profileImagePath ?? this.profileImagePath,
      senderName: senderName ?? this.senderName,
      sentDate: sentDate ?? this.sentDate,
      lastMessage: lastMessage ?? this.lastMessage,
      noOfMessages: noOfMessages ?? this.noOfMessages,
      callStatusIcon: callStatusIcon ?? this.callStatusIcon,
      callTypeIcon: callTypeIcon ?? this.callTypeIcon,
      callStatusIconColor: callStatusIconColor ?? this.callStatusIconColor,
      noOfMessagesColor: noOfMessagesColor ?? this.noOfMessagesColor,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'profileImagePath': profileImagePath,
      'senderName': senderName,
      'sentDate': sentDate,
      'lastMessage': lastMessage,
      'noOfMessages': noOfMessages,
      'callStatusIcon': callStatusIcon?.codePoint,
      'callTypeIcon': callTypeIcon?.codePoint,
      'callStatusIconColor': callStatusIconColor?.value,
      'noOfMessagesColor': noOfMessagesColor?.value,
    };
  }

  factory Chat.fromMap(Map<String, dynamic> map) {
    return Chat(
      profileImagePath: map['profileImagePath'] as String,
      senderName: map['senderName'] as String,
      sentDate: map['sentDate'] != null ? map['sentDate'] as String : null,
      lastMessage:
          map['lastMessage'] != null ? map['lastMessage'] as String : null,
      noOfMessages:
          map['noOfMessages'] != null ? map['noOfMessages'] as String : null,
      callStatusIcon:
          map['callStatusIcon'] != null
              ? IconData(
                map['callStatusIcon'] as int,
                fontFamily: 'MaterialIcons',
              )
              : null,
      callTypeIcon:
          map['callTypeIcon'] != null
              ? IconData(
                map['callTypeIcon'] as int,
                fontFamily: 'MaterialIcons',
              )
              : null,
      callStatusIconColor:
          map['callStatusIconColor'] != null
              ? Color(map['callStatusIconColor'] as int)
              : null,
      noOfMessagesColor:
          map['noOfMessagesColor'] != null
              ? Color(map['noOfMessagesColor'] as int)
              : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Chat.fromJson(String source) =>
      Chat.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Chat(profileImagePath: $profileImagePath, senderName: $senderName, sentDate: $sentDate, lastMessage: $lastMessage, noOfMessages: $noOfMessages, callStatusIcon: $callStatusIcon, callTypeIcon: $callTypeIcon, callStatusIconColor: $callStatusIconColor, noOfMessagesColor: $noOfMessagesColor)';
  }

  @override
  bool operator ==(covariant Chat other) {
    if (identical(this, other)) return true;

    return other.profileImagePath == profileImagePath &&
        other.senderName == senderName &&
        other.sentDate == sentDate &&
        other.lastMessage == lastMessage &&
        other.noOfMessages == noOfMessages &&
        other.callStatusIcon == callStatusIcon &&
        other.callTypeIcon == callTypeIcon &&
        other.callStatusIconColor == callStatusIconColor &&
        other.noOfMessagesColor == noOfMessagesColor;
  }

  @override
  int get hashCode {
    return profileImagePath.hashCode ^
        senderName.hashCode ^
        sentDate.hashCode ^
        lastMessage.hashCode ^
        noOfMessages.hashCode ^
        callStatusIcon.hashCode ^
        callTypeIcon.hashCode ^
        callStatusIconColor.hashCode ^
        noOfMessagesColor.hashCode;
  }
}
