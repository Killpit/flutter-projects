import 'package:flutter/material.dart';
import 'package:twitter_clone/constants/assets_constants.dart';
import 'package:flutter_svg/svg.dart';

class UIConstants {
  static AppBar appBar() {
    return AppBar(
      title: SvgPicture.asset(AssetsConstants.twitterLogo,
      ),
    );
  }
}