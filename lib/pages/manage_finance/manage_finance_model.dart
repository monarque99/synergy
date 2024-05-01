import '/backend/api_requests/api_calls.dart';
import '/components/navbar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'manage_finance_widget.dart' show ManageFinanceWidget;
import 'package:flutter/material.dart';

class ManageFinanceModel extends FlutterFlowModel<ManageFinanceWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for navbar component.
  late NavbarModel navbarModel;
  // Stores action output result for [Backend Call - API (sendRappelleCotisation)] action in Button widget.
  ApiCallResponse? apiResulth5w;

  @override
  void initState(BuildContext context) {
    navbarModel = createModel(context, () => NavbarModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    navbarModel.dispose();
  }
}
