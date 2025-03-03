// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Chat {
  String profileImagePath;
  String senderName;
  String? sentDate;
  String? lastMessage;
  String? noOfMessages;

  Chat({
    required this.profileImagePath,
    required this.senderName,
    this.sentDate,
    this.lastMessage,
    this.noOfMessages,
  });

  Chat copyWith({
    String? profileImagePath,
    String? senderName,
    String? sentDate,
    String? lastMessage,
    String? noOfMessages,
  }) {
    return Chat(
      profileImagePath: profileImagePath ?? this.profileImagePath,
      senderName: senderName ?? this.senderName,
      sentDate: sentDate ?? this.sentDate,
      lastMessage: lastMessage ?? this.lastMessage,
      noOfMessages: noOfMessages ?? this.noOfMessages,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'profileImagePath': profileImagePath,
      'senderName': senderName,
      'sentDate': sentDate,
      'lastMessage': lastMessage,
      'noOfMessages': noOfMessages,
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
    );
  }

  String toJson() => json.encode(toMap());

  factory Chat.fromJson(String source) =>
      Chat.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Chat(profileImagePath: $profileImagePath, senderName: $senderName, sentDate: $sentDate, lastMessage: $lastMessage, noOfMessages: $noOfMessages)';
  }

  @override
  bool operator ==(covariant Chat other) {
    if (identical(this, other)) return true;

    return other.profileImagePath == profileImagePath &&
        other.senderName == senderName &&
        other.sentDate == sentDate &&
        other.lastMessage == lastMessage &&
        other.noOfMessages == noOfMessages;
  }

  @override
  int get hashCode {
    return profileImagePath.hashCode ^
        senderName.hashCode ^
        sentDate.hashCode ^
        lastMessage.hashCode ^
        noOfMessages.hashCode;
  }
}
