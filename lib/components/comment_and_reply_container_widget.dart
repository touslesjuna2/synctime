import '/backend/schema/structs/index.dart';
import '/components/likes_count_row_component_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'comment_and_reply_container_model.dart';
export 'comment_and_reply_container_model.dart';

class CommentAndReplyContainerWidget extends StatefulWidget {
  /// Comments ListView in Community App in general.  Comments can have child
  /// comments as its reply, Comment has 4 properties, author's image icon,
  /// author's name text, comment content text,, created_at text.  Comment has 4
  /// icon buttons in the upper right corner, each is reply icon, like icon,
  /// dislike icon,  more options icon.
  const CommentAndReplyContainerWidget({
    super.key,
    this.commentDTO,
  });

  final CommentsStruct? commentDTO;

  @override
  State<CommentAndReplyContainerWidget> createState() =>
      _CommentAndReplyContainerWidgetState();
}

class _CommentAndReplyContainerWidgetState
    extends State<CommentAndReplyContainerWidget> {
  late CommentAndReplyContainerModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CommentAndReplyContainerModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(
          color: FlutterFlowTheme.of(context).alternate,
          width: 1.0,
        ),
      ),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: 30.0,
                      height: 30.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).accent2,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image.network(
                          valueOrDefault<String>(
                            widget.commentDTO?.userBoardProfile.imageUrl,
                            'https://i.pinimg.com/280x280_RS/ce/6c/fc/ce6cfc73ef62f44510a64bc62937328f.jpg',
                          ),
                          width: MediaQuery.sizeOf(context).width * 0.1,
                          height: MediaQuery.sizeOf(context).height * 0.1,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          valueOrDefault<String>(
                            widget.commentDTO!.hasUserBoardProfile()
                                ? widget.commentDTO?.userBoardProfile.nickname
                                : 'anonym${widget.commentDTO?.anonymNum.toString()}',
                            'anonym',
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyLarge.override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                        Text(
                          dateTimeFormat(
                            "relative",
                            dateTimeFromSecondsSinceEpoch(valueOrDefault<int>(
                              widget.commentDTO?.createdAt,
                              0,
                            )),
                            locale:
                                FFLocalizations.of(context).languageShortCode ??
                                    FFLocalizations.of(context).languageCode,
                          ),
                          style: FlutterFlowTheme.of(context)
                              .labelSmall
                              .override(
                                fontFamily: 'Outfit',
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                letterSpacing: 0.0,
                              ),
                        ),
                      ],
                    ),
                  ].divide(const SizedBox(width: 12.0)),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      buttonSize: 24.0,
                      fillColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      icon: FaIcon(
                        FontAwesomeIcons.solidComment,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 14.0,
                      ),
                      onPressed: () {
                        print('IconButton pressed ...');
                      },
                    ),
                    FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 30.0,
                      buttonSize: 24.0,
                      fillColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      icon: Icon(
                        Icons.thumb_up_alt_rounded,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 16.0,
                      ),
                      onPressed: () {
                        print('IconButton pressed ...');
                      },
                    ),
                    FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      buttonSize: 24.0,
                      fillColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      icon: Icon(
                        Icons.thumb_down_alt_rounded,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 16.0,
                      ),
                      onPressed: () {
                        print('IconButton pressed ...');
                      },
                    ),
                    FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      buttonSize: 24.0,
                      fillColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      icon: Icon(
                        Icons.more_vert,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 16.0,
                      ),
                      onPressed: () {
                        print('IconButton pressed ...');
                      },
                    ),
                  ].divide(const SizedBox(width: 8.0)),
                ),
              ].divide(const SizedBox(width: 8.0)),
            ),
            Align(
              alignment: const AlignmentDirectional(-1.0, 0.0),
              child: Text(
                valueOrDefault<String>(
                  widget.commentDTO?.content,
                  'Default needed',
                ),
                textAlign: TextAlign.start,
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Plus Jakarta Sans',
                      letterSpacing: 0.0,
                    ),
              ),
            ),
            if (widget.commentDTO?.likeCount.toString() != '0')
              Container(
                width: MediaQuery.sizeOf(context).width * 1.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: wrapWithModel(
                  model: _model.likesCountRowComponentModel1,
                  updateCallback: () => safeSetState(() {}),
                  child: LikesCountRowComponentWidget(
                    likeCountsInteger: widget.commentDTO!.likeCount,
                  ),
                ),
              ),
            Builder(
              builder: (context) {
                final repliesDTO = widget.commentDTO?.replies.toList() ?? [];

                return ListView.builder(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: repliesDTO.length,
                  itemBuilder: (context, repliesDTOIndex) {
                    final repliesDTOItem = repliesDTO[repliesDTOIndex];
                    return Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 10.0),
                      child: Container(
                        decoration: const BoxDecoration(),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                borderRadius: BorderRadius.circular(8.0),
                                border: Border.all(
                                  color: FlutterFlowTheme.of(context).alternate,
                                  width: 1.0,
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    16.0, 16.0, 16.0, 16.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Container(
                                              width: 30.0,
                                              height: 30.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .accent2,
                                                borderRadius:
                                                    BorderRadius.circular(18.0),
                                              ),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(18.0),
                                                child: Image.network(
                                                  'https://images.unsplash.com/photo-1683829989947-c1e46dbcbc8f?w=500&h=500',
                                                  width: 30.0,
                                                  height: 30.0,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  repliesDTOItem
                                                          .hasUserBoardProfile()
                                                      ? repliesDTOItem
                                                          .userBoardProfile
                                                          .nickname
                                                      : 'anonym${repliesDTOItem.anonymNum.toString()}',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyLarge
                                                      .override(
                                                        fontFamily:
                                                            'Plus Jakarta Sans',
                                                        fontSize: 14.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                ),
                                                Text(
                                                  dateTimeFormat(
                                                    "relative",
                                                    dateTimeFromSecondsSinceEpoch(
                                                        repliesDTOItem
                                                            .createdAt),
                                                    locale: FFLocalizations.of(
                                                                context)
                                                            .languageShortCode ??
                                                        FFLocalizations.of(
                                                                context)
                                                            .languageCode,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .labelSmall
                                                      .override(
                                                        fontFamily: 'Outfit',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ],
                                            ),
                                          ].divide(const SizedBox(width: 12.0)),
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            FlutterFlowIconButton(
                                              borderColor: Colors.transparent,
                                              buttonSize: 24.0,
                                              fillColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              icon: Icon(
                                                Icons.thumb_up_alt_rounded,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                size: 16.0,
                                              ),
                                              onPressed: () {
                                                print('IconButton pressed ...');
                                              },
                                            ),
                                            FlutterFlowIconButton(
                                              borderColor: Colors.transparent,
                                              buttonSize: 24.0,
                                              fillColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              icon: Icon(
                                                Icons.thumb_down_alt_rounded,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                size: 16.0,
                                              ),
                                              onPressed: () {
                                                print('IconButton pressed ...');
                                              },
                                            ),
                                            FlutterFlowIconButton(
                                              borderColor: Colors.transparent,
                                              buttonSize: 24.0,
                                              fillColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              icon: Icon(
                                                Icons.more_vert,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                size: 16.0,
                                              ),
                                              onPressed: () {
                                                print('IconButton pressed ...');
                                              },
                                            ),
                                          ].divide(const SizedBox(width: 8.0)),
                                        ),
                                      ].divide(const SizedBox(width: 8.0)),
                                    ),
                                    Align(
                                      alignment:
                                          const AlignmentDirectional(-1.0, 0.0),
                                      child: Text(
                                        repliesDTOItem.content,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Plus Jakarta Sans',
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                    if (widget.commentDTO?.likeCount
                                            .toString() !=
                                        '0')
                                      Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                1.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                        ),
                                        child: wrapWithModel(
                                          model: _model
                                              .likesCountRowComponentModels2
                                              .getModel(
                                            repliesDTOItem.id.toString(),
                                            repliesDTOIndex,
                                          ),
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: LikesCountRowComponentWidget(
                                            key: Key(
                                              'Keyo8b_${repliesDTOItem.id.toString()}',
                                            ),
                                            likeCountsInteger:
                                                repliesDTOItem.likeCount,
                                          ),
                                        ),
                                      ),
                                  ].divide(const SizedBox(height: 12.0)),
                                ),
                              ),
                            ),
                          ].divide(const SizedBox(height: 16.0)),
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ].divide(const SizedBox(height: 12.0)),
        ),
      ),
    );
  }
}
