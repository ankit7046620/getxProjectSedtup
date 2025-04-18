import 'package:flutter/material.dart';
import 'package:getx/common/component/common_elevated_button.dart';
import 'package:getx/constant/assets_constant.dart';
import 'package:techgrains/com/techgrains/view/tg_view.dart';

import '../import/common_import.dart';
import '../import/common_tg_utils.dart';

class NoInternetWidget extends StatelessWidget {
  Function tryAgainTapEvent;

  NoInternetWidget({super.key, required this.tryAgainTapEvent});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TGView.columnContainer(
        padding: const EdgeInsets.symmetric(horizontal: EdgeInsetType.xxxxs),
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: SizeType.xxxxxxl, width: SizeType.xxxxxl, child: Image.asset(AssetsConstant.logo)),
          TGView.emptySizedBox(height: SpacingType.m),
          TGText.bodyLarge(LabelConstants.oopsNoInternet, textAlign: TextAlign.center, fontWeight: FontWeight.w600),
          TGView.emptySizedBox(height: SpacingType.s),
          _messageLabelWidget(LabelConstants.couldNotConnectToInternet),
          TGView.emptySizedBox(height: SpacingType.xxxxs),
          _messageLabelWidget(LabelConstants.pleaseCheckYourNetwork),
          TGView.emptySizedBox(height: SpacingType.xxl),
          _buttonWidget(context),
        ],
      ),
    );
  }

  Widget _messageLabelWidget(String label) {
    return TGText.labelLarge(label, textAlign: TextAlign.center, color: Colors.black);
  }

  Widget _buttonWidget(BuildContext context) {
    return CommonElevatedButton(
      onPressed: () {
        tryAgainTapEvent();
      },
      width: SizeType.xxxxxl,
      child: TGText.labelSmall(LabelConstants.labelEmail, color: Colors.white),
    );
  }
}
