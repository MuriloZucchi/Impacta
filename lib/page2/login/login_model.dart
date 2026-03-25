import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:flutter/material.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for tfemail widget.
  FocusNode? tfemailFocusNode;
  TextEditingController? tfemailTextController;
  String? Function(BuildContext, String?)? tfemailTextControllerValidator;
  // State field(s) for tfsenha widget.
  FocusNode? tfsenhaFocusNode;
  TextEditingController? tfsenhaTextController;
  String? Function(BuildContext, String?)? tfsenhaTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tfemailFocusNode?.dispose();
    tfemailTextController?.dispose();

    tfsenhaFocusNode?.dispose();
    tfsenhaTextController?.dispose();
  }
}
