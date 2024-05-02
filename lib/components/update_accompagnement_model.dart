import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'update_accompagnement_widget.dart' show UpdateAccompagnementWidget;
import 'package:flutter/material.dart';

class UpdateAccompagnementModel
    extends FlutterFlowModel<UpdateAccompagnementWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for projectName widget.
  FocusNode? projectNameFocusNode;
  TextEditingController? projectNameTextController;
  String? Function(BuildContext, String?)? projectNameTextControllerValidator;
  // State field(s) for porteurNamefam widget.
  FocusNode? porteurNamefamFocusNode;
  TextEditingController? porteurNamefamTextController;
  String? Function(BuildContext, String?)?
      porteurNamefamTextControllerValidator;
  // State field(s) for porteurPREName widget.
  FocusNode? porteurPRENameFocusNode;
  TextEditingController? porteurPRENameTextController;
  String? Function(BuildContext, String?)?
      porteurPRENameTextControllerValidator;
  // State field(s) for amount widget.
  FocusNode? amountFocusNode;
  TextEditingController? amountTextController;
  String? Function(BuildContext, String?)? amountTextControllerValidator;
  // State field(s) for linkcontart widget.
  FocusNode? linkcontartFocusNode1;
  TextEditingController? linkcontartTextController1;
  String? Function(BuildContext, String?)? linkcontartTextController1Validator;
  // State field(s) for statut widget.
  String? statutValue;
  FormFieldController<String>? statutValueController;
  // State field(s) for RatingBar widget.
  double? ratingBarValue;
  // State field(s) for linkcontart widget.
  FocusNode? linkcontartFocusNode2;
  TextEditingController? linkcontartTextController2;
  String? Function(BuildContext, String?)? linkcontartTextController2Validator;
  // State field(s) for linkcontart widget.
  FocusNode? linkcontartFocusNode3;
  TextEditingController? linkcontartTextController3;
  String? Function(BuildContext, String?)? linkcontartTextController3Validator;
  // State field(s) for paiementDate widget.
  FocusNode? paiementDateFocusNode;
  TextEditingController? paiementDateTextController;
  String? Function(BuildContext, String?)? paiementDateTextControllerValidator;
  // Stores action output result for [Backend Call - API (updateAccompagnement)] action in Button widget.
  ApiCallResponse? apiResultf28;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    projectNameFocusNode?.dispose();
    projectNameTextController?.dispose();

    porteurNamefamFocusNode?.dispose();
    porteurNamefamTextController?.dispose();

    porteurPRENameFocusNode?.dispose();
    porteurPRENameTextController?.dispose();

    amountFocusNode?.dispose();
    amountTextController?.dispose();

    linkcontartFocusNode1?.dispose();
    linkcontartTextController1?.dispose();

    linkcontartFocusNode2?.dispose();
    linkcontartTextController2?.dispose();

    linkcontartFocusNode3?.dispose();
    linkcontartTextController3?.dispose();

    paiementDateFocusNode?.dispose();
    paiementDateTextController?.dispose();
  }
}
