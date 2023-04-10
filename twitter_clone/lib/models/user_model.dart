import 'package:collection/collection.dart';
import 'package:flutter/material.dart';

@immutable
class UserModel {
  final String email;
  final String name;
  final List<String> followers;
    final List<String> following;
  final String profilePic;
  final String bannerPic;
  final String uid;
  final String bio;
  final bool isTwitterBlue;
  const UserModel({
    required this.email,
    required this.name,
    required this.followers,
    required this.following,
    required this.profilePic,
    required this.bannerPic,
    required this.uid,
    required this.bio,
    required this.isTwitterBlue,
  });

  UserModel copyWith({
    String? email,
    String? name,
    List<String>? followers,
    List<String>? following,
    String? profilePic,
    String? bannerPic,
    String? uid,
    String? bio,
    bool? isTwitterBlue,
  }) {
    return UserModel(
      email: email ?? this.email,
      name: name ?? this.name,
      followers: followers ?? this.followers,
      following: following ?? this.following,
      profilePic: profilePic ?? this.profilePic,
      bannerPic: bannerPic ?? this.bannerPic,
      uid: uid ?? this.uid,
      bio: bio ?? this.bio,
      isTwitterBlue: isTwitterBlue ?? this.isTwitterBlue,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'email': email,
      'name': name,
      'followers': followers,
      'following': following,
      'profilePic': profilePic,
      'bannerPic': bannerPic,
      'uid': uid,
      'bio': bio,
      'isTwitterBlue': isTwitterBlue,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      email: map['email'] ?? '',
      name: map['name'] ?? '',
      followers: List<String>.from(map['followers']),
      following: List<String>.from(map['following']),
      profilePic: map['profilePic'] ?? '',
      bannerPic: map['bannerPic'] ?? '',
      uid: map['uid'] ?? '',
      bio: map['bio'] ?? '',
      isTwitterBlue: map['isTwitterBlue'] ?? false,
    );
  }

  @override
  String toString() {
    return 'UserModel(email: $email, name: $name, followers: $followers, following: $following, profilePic: $profilePic, bannerPic: $bannerPic, uid: $uid, bio: $bio, isTwitterBlue: $isTwitterBlue)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;
  
    return other is UserModel &&
      other.email == email &&
      other.name == name &&
      listEquals(other.followers, followers) &&
      listEquals(other.following, following) &&
      other.profilePic == profilePic &&
      other.bannerPic == bannerPic &&
      other.uid == uid &&
      other.bio == bio &&
      other.isTwitterBlue == isTwitterBlue;
  }

  @override
  int get hashCode {
    return email.hashCode ^
      name.hashCode ^
      followers.hashCode ^
      following.hashCode ^
      profilePic.hashCode ^
      bannerPic.hashCode ^
      uid.hashCode ^
      bio.hashCode ^
      isTwitterBlue.hashCode;
  }
}
