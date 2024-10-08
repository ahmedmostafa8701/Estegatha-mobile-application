import 'package:estegatha/features/sos/presentation/widgets/pin_field.dart';
import 'package:estegatha/features/sos/presentation/widgets/pin_input.dart';
import 'package:estegatha/utils/common/widgets/custom_app_bar.dart';
import 'package:estegatha/utils/constant/colors.dart';
import 'package:estegatha/utils/constant/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../utils/common/styles/text_styles.dart';
class CancelSosPin extends StatelessWidget {
  const CancelSosPin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar.buildAppBar(title: 'SOS'),
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Text(
                'Enter your pin to cancel',
                style: Styles.getPrimaryMedium(),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Text(
                'If no PIN entered, your SOS and location will be sent to your organization and emergency contacts.',
                style: Styles.getDefaultPrimary(
                  fontSize: ConstantSizes.fontSizeLg,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Spacer(
              flex: 50,
            ),
            PinInput(
              onChange: (pin) {
                if (pin.length == 4) {

                }
              },
            ),
            Spacer(
              flex: 100,
            ),
          ],
        ),
      ),
    );
  }
}
