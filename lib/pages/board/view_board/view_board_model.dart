import '/components/ads_banner_widget.dart';
import '/components/comments_count_component_widget.dart';
import '/components/likes_count_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'view_board_widget.dart' show ViewBoardWidget;
import 'package:flutter/material.dart';

class ViewBoardModel extends FlutterFlowModel<ViewBoardWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for ads_banner component.
  late AdsBannerModel adsBannerModel;
  // Model for LikesCountComponent component.
  late LikesCountComponentModel likesCountComponentModel;
  // Model for CommentsCountComponent component.
  late CommentsCountComponentModel commentsCountComponentModel;

  @override
  void initState(BuildContext context) {
    adsBannerModel = createModel(context, () => AdsBannerModel());
    likesCountComponentModel =
        createModel(context, () => LikesCountComponentModel());
    commentsCountComponentModel =
        createModel(context, () => CommentsCountComponentModel());
  }

  @override
  void dispose() {
    adsBannerModel.dispose();
    likesCountComponentModel.dispose();
    commentsCountComponentModel.dispose();
  }
}
