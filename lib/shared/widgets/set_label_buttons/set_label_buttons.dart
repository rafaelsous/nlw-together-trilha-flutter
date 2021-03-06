import 'package:flutter/material.dart';

import '/shared/widgets/divider_vertical/divider_vertical.dart';
import '/shared/widgets/label_button/label_button.dart';

import '/shared/themes/app_colors.dart';
import '/shared/themes/app_text_styles.dart';

class SetLabelButtons extends StatelessWidget {
  final String primaryLabel;
  final String secondaryLabel;
  final VoidCallback primaryOnPressed;
  final VoidCallback secondaryOnPressed;
  final bool enablePrimaryColor;

  const SetLabelButtons({
    Key? key,
    required this.primaryLabel,
    required this.secondaryLabel,
    required this.primaryOnPressed,
    required this.secondaryOnPressed,
    this.enablePrimaryColor = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      color: AppColors.shape,
      child: Row(
        children: [
          Expanded(
            child: LabelButton(
              label: primaryLabel,
              onPressed: primaryOnPressed,
              style: enablePrimaryColor ? TextStyles.buttonPrimary : null,
            ),
          ),
          DividerVertical(),
          Expanded(
            child: LabelButton(
              label: secondaryLabel,
              onPressed: secondaryOnPressed,
            ),
          ),
        ],
      ),
    );
  }
}
