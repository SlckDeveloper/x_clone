import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:x_clone/constanst/constants.dart';
import '../theme/pallete.dart';

class UIConstants {

//LoginView, SignUp ve HomeScreen gibi sayfalarda tekrar tekrar kullanılacağı
//için ReUsableAppBar widgetı oluşturduk
  static AppBar appBar() {
    return AppBar(
      //ihtiyacımız olan assetleri, daha önce oluşturduğumuz constants
      //klasöründeki sabitlerden çekiyoruz...
      title: SvgPicture.asset(AssetsConstants.twitterLogo,
          colorFilter: const ColorFilter.mode(Pallete.blueColor, BlendMode.srcIn),
          semanticsLabel: 'mavi kuş'),
      centerTitle: true,
    );
  }
}
