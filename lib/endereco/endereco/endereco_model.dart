import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'endereco_widget.dart' show EnderecoWidget;
import 'package:flutter/material.dart';

class EnderecoModel extends FlutterFlowModel<EnderecoWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for tfcep widget.
  FocusNode? tfcepFocusNode;
  TextEditingController? tfcepTextController;
  String? Function(BuildContext, String?)? tfcepTextControllerValidator;
  // Stores action output result for [Backend Call - API (conCep)] action in tfcep widget.
  ApiCallResponse? apiResultzwt;
  // State field(s) for tfendereco widget.
  FocusNode? tfenderecoFocusNode;
  TextEditingController? tfenderecoTextController;
  String? Function(BuildContext, String?)? tfenderecoTextControllerValidator;
  // State field(s) for tfnumero widget.
  FocusNode? tfnumeroFocusNode;
  TextEditingController? tfnumeroTextController;
  String? Function(BuildContext, String?)? tfnumeroTextControllerValidator;
  // State field(s) for tfbairro widget.
  FocusNode? tfbairroFocusNode;
  TextEditingController? tfbairroTextController;
  String? Function(BuildContext, String?)? tfbairroTextControllerValidator;
  // State field(s) for tfcomplemento widget.
  FocusNode? tfcomplementoFocusNode;
  TextEditingController? tfcomplementoTextController;
  String? Function(BuildContext, String?)? tfcomplementoTextControllerValidator;
  // State field(s) for tfref widget.
  FocusNode? tfrefFocusNode;
  TextEditingController? tfrefTextController;
  String? Function(BuildContext, String?)? tfrefTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tfcepFocusNode?.dispose();
    tfcepTextController?.dispose();

    tfenderecoFocusNode?.dispose();
    tfenderecoTextController?.dispose();

    tfnumeroFocusNode?.dispose();
    tfnumeroTextController?.dispose();

    tfbairroFocusNode?.dispose();
    tfbairroTextController?.dispose();

    tfcomplementoFocusNode?.dispose();
    tfcomplementoTextController?.dispose();

    tfrefFocusNode?.dispose();
    tfrefTextController?.dispose();
  }
}
