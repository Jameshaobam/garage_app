import 'package:flutter/material.dart';

class CustomNavigation {
  navigatePushPageName(BuildContext ctx, String routeName) {
    Navigator.pushNamed(ctx, routeName);
  }

  navigatePushReplacePageName(BuildContext ctx, String routeName) {
    Navigator.pushReplacementNamed(ctx, routeName);
  }
  navigatePop(BuildContext ctx){
    Navigator.of(ctx).pop();
  }
}

   class AdaptiveTextSize {
      const AdaptiveTextSize();

      getadaptiveTextSize(BuildContext context, dynamic value) {
    // 720 is medium screen height
        return (value / 720) * MediaQuery.of(context).size.height;
      }
    }
