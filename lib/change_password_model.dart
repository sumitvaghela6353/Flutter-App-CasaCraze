// TODO Implement this library.

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'Homepage_model.dart';

class ChangePasswordModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for yourName widget.
  TextEditingController? yourNameController;
  String? Function(BuildContext, String?)? yourNameControllerValidator;
  // State field(s) for city widget.
  TextEditingController? cityController1;
  String? Function(BuildContext, String?)? cityController1Validator;
  // State field(s) for city widget.
  TextEditingController? cityController2;
  String? Function(BuildContext, String?)? cityController2Validator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    yourNameController?.dispose();
    cityController1?.dispose();
    cityController2?.dispose();
  }

  /// Additional helper methods are added here.

}
