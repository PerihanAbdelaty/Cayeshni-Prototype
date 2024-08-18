import '/flutter_flow/flutter_flow_util.dart';
import 'register_account_widget.dart' show RegisterAccountWidget;
import 'package:flutter/material.dart';

class RegisterAccountModel extends FlutterFlowModel<RegisterAccountWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for firstName widget.
  FocusNode? firstNameFocusNode;
  TextEditingController? firstNameTextController;
  String? Function(BuildContext, String?)? firstNameTextControllerValidator;

  // State field(s) for lastName widget.
  FocusNode? lastNameFocusNode;
  TextEditingController? lastNameTextController;
  String? Function(BuildContext, String?)? lastNameTextControllerValidator;

  // State field(s) for idNumber widget.
  FocusNode? idNumberFocusNode;
  TextEditingController? idNumberTextController;
  String? Function(BuildContext, String?)? idNumberTextControllerValidator;

   // State field(s) for userEmail widget.
  FocusNode? userEmailFocusNode;
  TextEditingController? userEmailTextController;
  String? Function(BuildContext, String?)? userEmailTextControllerValidator;

  // State field(s) for password widget.
  TextEditingController? passwordTextController;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;

  set userId(int userId) {}

  @override
  void initState(BuildContext context) {
    // Initialize state fields if necessary.
  }

  @override
  void dispose() {
    // Dispose state fields
    firstNameFocusNode?.dispose();
    firstNameTextController?.dispose();

    lastNameFocusNode?.dispose();
    lastNameTextController?.dispose();

    idNumberFocusNode?.dispose();
    idNumberTextController?.dispose();

    passwordTextController?.dispose();
  }
}
