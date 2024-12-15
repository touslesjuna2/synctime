import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'anonym_check_box_row_model.dart';
export 'anonym_check_box_row_model.dart';

class AnonymCheckBoxRowWidget extends StatefulWidget {
  const AnonymCheckBoxRowWidget({super.key});

  @override
  State<AnonymCheckBoxRowWidget> createState() =>
      _AnonymCheckBoxRowWidgetState();
}

class _AnonymCheckBoxRowWidgetState extends State<AnonymCheckBoxRowWidget> {
  late AnonymCheckBoxRowModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AnonymCheckBoxRowModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Theme(
          data: ThemeData(
            checkboxTheme: CheckboxThemeData(
              visualDensity: VisualDensity.compact,
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4.0),
              ),
            ),
            unselectedWidgetColor: FlutterFlowTheme.of(context).alternate,
          ),
          child: Checkbox(
            value: _model.checkboxValue ??= true,
            onChanged: (newValue) async {
              safeSetState(() => _model.checkboxValue = newValue!);
            },
            side: BorderSide(
              width: 2,
              color: FlutterFlowTheme.of(context).alternate,
            ),
            activeColor: const Color(0xFFCE4338),
            checkColor: FlutterFlowTheme.of(context).info,
          ),
        ),
        Text(
          'Anonym',
          textAlign: TextAlign.start,
          style: FlutterFlowTheme.of(context).bodyMedium.override(
                fontFamily: 'Roboto',
                color: const Color(0xFFCE3B30),
                fontSize: 10.0,
                letterSpacing: 0.0,
                fontWeight: FontWeight.w600,
              ),
        ),
      ],
    );
  }
}
