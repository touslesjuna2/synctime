import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'ads_banner_model.dart';
export 'ads_banner_model.dart';

class AdsBannerWidget extends StatefulWidget {
  /// temporary banner
  const AdsBannerWidget({super.key});

  @override
  State<AdsBannerWidget> createState() => _AdsBannerWidgetState();
}

class _AdsBannerWidgetState extends State<AdsBannerWidget> {
  late AdsBannerModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AdsBannerModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: MediaQuery.sizeOf(context).width * 1.0,
        height: MediaQuery.sizeOf(context).height * 0.1,
        decoration: const BoxDecoration(
          color: Color(0xFFD0CFCF),
          shape: BoxShape.rectangle,
        ),
      ),
    );
  }
}
