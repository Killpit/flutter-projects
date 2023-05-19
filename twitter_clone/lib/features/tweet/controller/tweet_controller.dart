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

    }
  }

  void _shareImageTweet({
    required List<File> images,
    required String text,
    required BuildContext context,
  }) {
    
  }
}