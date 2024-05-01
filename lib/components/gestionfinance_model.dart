import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'gestionfinance_widget.dart' show GestionfinanceWidget;
import 'package:flutter/material.dart';

class GestionfinanceModel extends FlutterFlowModel<GestionfinanceWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - API (deleteFinanceByID)] action in IconButton widget.
  ApiCallResponse? apiResult0dr;
  // Stores action output result for [Backend Call - API (sendRappelleCotisation)] action in Button widget.
  ApiCallResponse? apiResulth5w;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
