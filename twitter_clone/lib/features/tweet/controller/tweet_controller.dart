import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:twitter_clone/core/enums/tweet_type_enum.dart';
import 'package:twitter_clone/core/utils.dart';
import 'package:twitter_clone/models/tweet_model.dart';

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
        text: text,
        context: context,
      );
    }
  }

  void _shareImageTweet({
    required List<File> images,
    required String text,
    required BuildContext context,
  }) {
    
  }

  void _shareTextTweet({
    required String text,
    required BuildContext context,
  }) {
    state = true;
    final hashtags = _getHashtagsFromText(text);
    String link = _getLinkFromText(text);
    Tweet tweet = Tweet(
      text: text, 
      hashtags: hashtags, 
      link: link, 
      imageLinks: [], 
      commentIds: [], 
      id: '', 
      likes: [], 
      reshareCount: 0, 
      tweetType: TweetType.text, 
      tweetedAt: DateTime.now(), 
      uid: '', );
  }

  String _getLinkFromText(String text) {
    String link = '';
    List<String> wordsInSentence = text.split(' ');
    for(String word in wordsInSentence) {
      if(word.startsWith('https://') || word.startsWith('www.')) {
        link = word;
      }
    }
    return link;
  }

  List<String> _getHashtagsFromText(String text) {
    List<String> hashtags = [];
    List<String> wordsInSentence = text.split(' ');
    for(String word in wordsInSentence) {
      if(word.startsWith('#')) {
        hashtags.add(word);
      }
    }
    return hashtags;
  }
}