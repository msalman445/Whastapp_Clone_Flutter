// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Status {
  final String profileImage;
  final bool isStatusActive;
  final String? statusImage;
  final String profileName;

  Status({
    required this.profileImage,
    this.isStatusActive = true,
    this.statusImage,
    required this.profileName,
  });

  Status copyWith({
    String? profileImage,
    bool? isStatusActive,
    String? statusImage,
    String? profileName,
  }) {
    return Status(
      profileImage: profileImage ?? this.profileImage,
      isStatusActive: isStatusActive ?? this.isStatusActive,
      statusImage: statusImage ?? this.statusImage,
      profileName: profileName ?? this.profileName,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'profileImage': profileImage,
      'isStatusActive': isStatusActive,
      'statusImage': statusImage,
      'profileName': profileName,
    };
  }

  factory Status.fromMap(Map<String, dynamic> map) {
    return Status(
      profileImage: map['profileImage'] as String,
      isStatusActive: map['isStatusActive'] as bool,
      statusImage:
          map['statusImage'] != null ? map['statusImage'] as String : null,
      profileName: map['profileName'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Status.fromJson(String source) =>
      Status.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Status(profileImage: $profileImage, isStatusActive: $isStatusActive, statusImage: $statusImage, profileName: $profileName)';
  }

  @override
  bool operator ==(covariant Status other) {
    if (identical(this, other)) return true;

    return other.profileImage == profileImage &&
        other.isStatusActive == isStatusActive &&
        other.statusImage == statusImage &&
        other.profileName == profileName;
  }

  @override
  int get hashCode {
    return profileImage.hashCode ^
        isStatusActive.hashCode ^
        statusImage.hashCode ^
        profileName.hashCode;
  }
}
