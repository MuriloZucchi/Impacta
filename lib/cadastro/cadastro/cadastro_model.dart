import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'cadastro_widget.dart' show CadastroWidget;
import 'package:flutter/material.dart';

class CadastroModel extends FlutterFlowModel<CadastroWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for tfnome widget.
  FocusNode? tfnomeFocusNode;
  TextEditingController? tfnomeTextController;
  String? Function(BuildContext, String?)? tfnomeTextControllerValidator;
  // State field(s) for tfemail widget.
  FocusNode? tfemailFocusNode;
  TextEditingController? tfemailTextController;
  String? Function(BuildContext, String?)? tfemailTextControllerValidator;
  // State field(s) for tfnumero widget.
  FocusNode? tfnumeroFocusNode;
  TextEditingController? tfnumeroTextController;
  String? Function(BuildContext, String?)? tfnumeroTextControllerValidator;
  // State field(s) for tfsenha widget.
  FocusNode? tfsenhaFocusNode;
  TextEditingController? tfsenhaTextController;
  String? Function(BuildContext, String?)? tfsenhaTextControllerValidator;
  // Stores action output result for [Backend Call - API (ApiCadastro)] action in Button widget.
  ApiCallResponse? apiResultpjf;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tfnomeFocusNode?.dispose();
    tfnomeTextController?.dispose();

    tfemailFocusNode?.dispose();
    tfemailTextController?.dispose();

    tfnumeroFocusNode?.dispose();
    tfnumeroTextController?.dispose();

    tfsenhaFocusNode?.dispose();
    tfsenhaTextController?.dispose();
  }
}
