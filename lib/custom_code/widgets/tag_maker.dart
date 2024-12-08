// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

class TagMaker extends StatefulWidget {
  const TagMaker({
    super.key,
    required this.width,
    required this.height,
    this.existingTags,
    this.hintText,
    required this.chipColor,
    required this.textColor,
  });

  final double width;
  final double height;
  final List<String>? existingTags;
  final String? hintText;
  final Color chipColor;
  final Color textColor;

  @override
  State<TagMaker> createState() => _TagMakerState();
}

class _TagMakerState extends State<TagMaker> {
  late List<String> _tags;
  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    _tags = widget.existingTags?.toList() ?? [];
    _updateAppState();
  }

  void _updateAppState() {
    FFAppState().myTags = List<String>.from(_tags);
  }

  void _addTag(String input) {
    final trimmed = input.trim();
    if (trimmed.isNotEmpty) {
      String tag = trimmed;
      if (tag.startsWith('#')) {
        tag = tag.substring(1);
      }
      if (tag.isNotEmpty && !_tags.contains(tag)) {
        setState(() {
          _tags.add(tag);
          _updateAppState();
        });
      }
    }
  }

  void _removeTag(String tag) {
    setState(() {
      _tags.remove(tag);
      _updateAppState();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      child: Wrap(
        spacing: 8.0,
        runSpacing: 4.0,
        children: [
          for (final tag in _tags)
            Chip(
              label: Text(
                '#$tag',
                style: FlutterFlowTheme.of(context).bodyMedium.copyWith(
                      color: widget.textColor,
                    ),
              ),
              backgroundColor: widget.chipColor,
              deleteIcon: const Icon(Icons.close, size: 18),
              onDeleted: () => _removeTag(tag),
            ),
          SizedBox(
            width: 120,
            child: TextField(
              controller: _controller,
              decoration: InputDecoration(
                hintText: widget.hintText ?? '#태그 입력 후 엔터 또는 스페이스',
                border: InputBorder.none,
              ),
              // 사용자가 스페이스 입력 시 감지하기 위해 onChanged 사용
              onChanged: (value) {
                // 마지막 글자가 스페이스인지 확인
                if (value.endsWith(' ')) {
                  _addTag(value);
                  _controller.clear();
                }
              },
              onSubmitted: (value) {
                _addTag(value);
                _controller.clear();
              },
              onEditingComplete: () {
                _addTag(_controller.text);
                _controller.clear();
              },
            ),
          ),
        ],
      ),
    );
  }
}
