import 'package:flutter/material.dart';
import 'package:radio_ai/shared/constants.dart';
import 'package:radio_ai/shared/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      width: double.infinity,
      height: SizeConfig.screenHeight,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            kAiPrimaryColor,
            kAiSecondaryColor,
          ],
        ),
      ),
      duration: Duration(milliseconds: 200),
    );
  }
}
