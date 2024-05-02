import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import 'create_accompagnement_widget.dart' show CreateAccompagnementWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CreateAccompagnementModel
    extends FlutterFlowModel<CreateAccompagnementWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for projectName widget.
  FocusNode? projectNameFocusNode;
  TextEditingController? projectNameTextController;
  String? Function(BuildContext, String?)? projectNameTextControllerValidator;
  // State field(s) for porteurName widget.
  FocusNode? porteurNameFocusNode;
  TextEditingController? porteurNameTextController;
  String? Function(BuildContext, String?)? porteurNameTextControllerValidator;
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
  FocusNode? linkcontartFocusNode;
  TextEditingController? linkcontartTextController;
  String? Function(BuildContext, String?)? linkcontartTextControllerValidator;
  // State field(s) for statut widget.
  String? statutValue;
  FormFieldController<String>? statutValueController;
  // State field(s) for RatingBar widget.
  double? ratingBarValue;
  // State field(s) for startDate widget.
  DateTimeRange? startDateSelectedDay;
  // State field(s) for endAt widget.
  DateTimeRange? endAtSelectedDay;
  // State field(s) for paiementDate widget.
  DateTimeRange? paiementDateSelectedDay;
  // Stores action output result for [Backend Call - API (createAccompagnement)] action in Button widget.
  ApiCallResponse? apiResultf28;

  @override
  void initState(BuildContext context) {
    startDateSelectedDay = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
    endAtSelectedDay = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
    paiementDateSelectedDay = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
  }

  @override
  void dispose() {
    projectNameFocusNode?.dispose();
    projectNameTextController?.dispose();

    porteurNameFocusNode?.dispose();
    porteurNameTextController?.dispose();

    porteurPRENameFocusNode?.dispose();
    porteurPRENameTextController?.dispose();

    amountFocusNode?.dispose();
    amountTextController?.dispose();

    linkcontartFocusNode?.dispose();
    linkcontartTextController?.dispose();
  }
}
