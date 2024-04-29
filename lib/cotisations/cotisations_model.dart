import '/flutter_flow/flutter_flow_util.dart';
import 'cotisations_widget.dart' show CotisationsWidget;
import 'package:flutter/material.dart';

class CotisationsModel extends FlutterFlowModel<CotisationsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
