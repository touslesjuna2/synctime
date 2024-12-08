import '/backend/schema/structs/index.dart';
import '/components/likes_count_row_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'comment_and_reply_container_widget.dart'
    show CommentAndReplyContainerWidget;
import 'package:flutter/material.dart';

class CommentAndReplyContainerModel
    extends FlutterFlowModel<CommentAndReplyContainerWidget> {
  ///  Local state fields for this component.

  CommentsStruct? commentDTO;
  void updateCommentDTOStruct(Function(CommentsStruct) updateFn) {
    updateFn(commentDTO ??= CommentsStruct());
  }

  ///  State fields for stateful widgets in this component.

  // Model for LikesCountRowComponent component.
  late LikesCountRowComponentModel likesCountRowComponentModel1;
  // Models for LikesCountRowComponent dynamic component.
  late FlutterFlowDynamicModels<LikesCountRowComponentModel>
      likesCountRowComponentModels2;

  @override
  void initState(BuildContext context) {
    likesCountRowComponentModel1 =
        createModel(context, () => LikesCountRowComponentModel());
    likesCountRowComponentModels2 =
        FlutterFlowDynamicModels(() => LikesCountRowComponentModel());
  }

  @override
  void dispose() {
    likesCountRowComponentModel1.dispose();
    likesCountRowComponentModels2.dispose();
  }
}
