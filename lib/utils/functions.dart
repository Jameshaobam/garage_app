import 'package:flutter/material.dart';


class CustomNavigation{
  
navigatePushPageName(BuildContext ctx,String routeName){
  Navigator.pushNamed(ctx, routeName);
}
navigatePushReplacePageName(BuildContext ctx,String routeName){
  Navigator.pushReplacementNamed(ctx, routeName);
}
}

