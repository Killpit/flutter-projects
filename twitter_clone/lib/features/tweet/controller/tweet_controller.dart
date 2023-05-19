import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:twitter_clone/core/utils.dart';

class TweetController extends StateNotifier<bool> {
  TweetController(): super(false);
  
  void shareTweet({
    required List<File> images,
    required String text,
    required BuildContext context,
  }) {
    if(text.isEmpty) {
      showSnackBar(context, 'Please enter text');
      return;
    }

    if(images.isNotEmpty) {
      _shareImageTweet(
        images: images,
        text: text,
        context: context,
      );
    } else {
      _shareTextTweet(
        images: images,
        text: text,
        context: context,
      );
    }
  }

  void _shareImageTweet({
    required List<File> images,
    required String text,
    required BuildContext context,
  }) {}

  void _shareTextTweet({
    required List<File> images,
    required String text,
    required BuildContext context,
  }) {}
}