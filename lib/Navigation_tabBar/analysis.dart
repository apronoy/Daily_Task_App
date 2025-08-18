import 'package:dailytask/common/cards/verticalCard.dart';
import 'package:dailytask/common/headsection/pAppbar.dart';
import 'package:dailytask/utilities/constants/sizes/sizes.dart';
import 'package:flutter/material.dart';

class AnalysisPage extends StatelessWidget {
  const AnalysisPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appbar..
      appBar: pAppbar(),
      //body with listview  ..
      body: Padding(
        padding: const EdgeInsets.only(
          left: psizes.screenPadding,
          right: psizes.screenPadding,
          top: psizes.screenPadding,
        ),
        child: ListView.separated(
            padding: EdgeInsets.only(bottom: psizes.bottomSpacer),
            separatorBuilder: (context, index) => SizedBox(height: psizes.md),
            itemCount: 10,
            itemBuilder: (context, index) {
              return verticalCart(index: index);
            }),
      ),
    );
  }
}
