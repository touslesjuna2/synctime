import '/components/ads_banner_widget.dart';
import '/components/anonym_check_box_row_widget.dart';
import '/components/comment_and_reply_container_widget.dart';
import '/components/comments_count_row_component_widget.dart';
import '/components/empty_widget.dart';
import '/components/likes_count_row_component_widget.dart';
import '/components/post_scraps_counts_row_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'view_post_widget.dart' show ViewPostWidget;
import 'package:flutter/material.dart';

class ViewPostModel extends FlutterFlowModel<ViewPostWidget> {
  ///  Local state fields for this page.

  bool isAnnouncePost = false;

  bool isQnaPost = false;

  bool hasBestComment = false;

  ///  State fields for stateful widgets in this page.

  // State field(s) for SubscribeSwitch widget.
  bool? subscribeSwitchValue;
  // Model for LikesCountRowComponent component.
  late LikesCountRowComponentModel likesCountRowComponentModel;
  // Model for CommentsCountRowComponent component.
  late CommentsCountRowComponentModel commentsCountRowComponentModel;
  // Model for PostScrapsCountsRowComponent component.
  late PostScrapsCountsRowComponentModel postScrapsCountsRowComponentModel;
  // Model for ads_banner component.
  late AdsBannerModel adsBannerModel;
  // Model for Empty component.
  late EmptyModel emptyModel1;
  // Model for Empty component.
  late EmptyModel emptyModel2;
  // Models for CommentAndReplyContainer dynamic component.
  late FlutterFlowDynamicModels<CommentAndReplyContainerModel>
      commentAndReplyContainerModels;
  // Model for AnonymCheckBoxRow component.
  late AnonymCheckBoxRowModel anonymCheckBoxRowModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {
    likesCountRowComponentModel =
        createModel(context, () => LikesCountRowComponentModel());
    commentsCountRowComponentModel =
        createModel(context, () => CommentsCountRowComponentModel());
    postScrapsCountsRowComponentModel =
        createModel(context, () => PostScrapsCountsRowComponentModel());
    adsBannerModel = createModel(context, () => AdsBannerModel());
    emptyModel1 = createModel(context, () => EmptyModel());
    emptyModel2 = createModel(context, () => EmptyModel());
    commentAndReplyContainerModels =
        FlutterFlowDynamicModels(() => CommentAndReplyContainerModel());
    anonymCheckBoxRowModel =
        createModel(context, () => AnonymCheckBoxRowModel());
  }

  @override
  void dispose() {
    likesCountRowComponentModel.dispose();
    commentsCountRowComponentModel.dispose();
    postScrapsCountsRowComponentModel.dispose();
    adsBannerModel.dispose();
    emptyModel1.dispose();
    emptyModel2.dispose();
    commentAndReplyContainerModels.dispose();
    anonymCheckBoxRowModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
