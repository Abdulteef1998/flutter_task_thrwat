import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quiz_app/assest.dart';
import 'package:quiz_app/theme/app_color.dart';
import 'package:quiz_app/theme/app_decorations.dart';
import 'package:quiz_app/theme/app_text_style.dart';

class NotSelectedOptionItem extends StatelessWidget {
  const NotSelectedOptionItem({super.key, required this.option});
  final String option;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(15),
      decoration: AppDecorations.notSelectedAnswerBackgroundDecoration,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: 16,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            spacing: 10,
            children: [
              CircleAvatar(
                radius: 12,
                backgroundColor: AppColor.primary,
                child: CircleAvatar(
                  radius: 10.2,
                  backgroundColor: Colors.white,
                  child: SvgPicture.asset(
                    Assest.iconCheck,
                    colorFilter: ColorFilter.mode(
                      AppColor.primary,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Text(option, style: AppTextStyle.medium16(color: AppColor.primary)),
        ],
      ),
    );
  }
}
