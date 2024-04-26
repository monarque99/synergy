import '/flutter_flow/flutter_flow_util.dart';
import 'internal_dashboard_widget.dart' show InternalDashboardWidget;
import 'package:flutter/material.dart';

class InternalDashboardModel extends FlutterFlowModel<InternalDashboardWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
