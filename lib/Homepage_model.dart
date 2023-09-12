// import '/flutter_flow/flutter_flow_theme.dart';
// import '/flutter_flow/flutter_flow_swipeable_stack.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:flutter/material.dart';
// import 'package:simple_gradient_text/simple_gradient_text.dart';
// import 'package:flutter_spinkit/flutter_spinkit.dart';
// import 'package:provider/provider.dart';
import 'package:swipeable_card_stack/swipeable_card_stack.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:provider/provider.dart';

class HomePageModel extends FlutterFlowModel {
  // PageController get pageViewController => null;

  /// Initialization and disposal methods.
   PageController? pageViewController;
   
    late SwipeableCardSectionController swipeableStackController;
    late  BottomNavigationBar bottomNavigationBar;

  void initState(BuildContext context) {
    swipeableStackController = SwipeableCardSectionController();
  }

  void _onItemTapped(BuildContext context) {
    bottomNavigationBar: BottomNavigationBar(items: const [],);
  }

  void dispose() {}

  /// Additional helper methods are added here.

}

class FlutterFlowModel {
}