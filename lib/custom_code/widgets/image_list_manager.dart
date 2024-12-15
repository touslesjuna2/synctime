// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:convert';
import 'dart:typed_data';
import 'dart:async';
import 'dart:html' as html; // 웹 환경에서 파일 입력을 위해 사용

import '/flutter_flow/uploaded_file.dart';

class ImageListManager extends StatefulWidget {
  const ImageListManager({
    super.key,
    this.width,
    this.height,
    required this.placeholderColor,
    required this.plusButtonColor,
    required this.removeButtonColor,
    required this.enableReorder,
  });

  final double? width;
  final double? height;
  final Color placeholderColor;
  final Color plusButtonColor;
  final Color removeButtonColor;
  final bool enableReorder;

  @override
  State<ImageListManager> createState() => _ImageListManagerState();
}

class _ImageListManagerState extends State<ImageListManager> {
  late List<String> _images; // base64 인코딩된 이미지 리스트

  @override
  void initState() {
    super.initState();
    _images = FFAppState().myImages.toList();
  }

  void _updateAppState() {
    FFAppState().myImages = List<String>.from(_images);
  }

  Future<void> _pickImage() async {
    // Web 전용 파일 선택 로직
    final completer = Completer<void>();
    final input = html.FileUploadInputElement()..accept = 'image/*';
    input.click();
    input.onChange.listen((event) async {
      final file = input.files?.isNotEmpty == true ? input.files!.first : null;
      if (file != null) {
        final reader = html.FileReader();
        reader.readAsDataUrl(file);
        reader.onLoadEnd.listen((e) {
          final result = reader.result as String;
          // result는 "data:image/png;base64,..." 형태이므로 base64 부분만 추출
          final base64Str = result.split(',').last;
          setState(() {
            _images.add(base64Str);
            _updateAppState();
          });
          completer.complete();
        });
      } else {
        // 사용자가 파일 선택을 취소한 경우
        completer.complete();
      }
    });

    await completer.future;
  }

  void _removeImage(int index) {
    setState(() {
      _images.removeAt(index);
      _updateAppState();
    });
  }

  void _onReorder(int oldIndex, int newIndex) {
    if (oldIndex < newIndex) {
      newIndex -= 1;
    }
    final item = _images.removeAt(oldIndex);
    _images.insert(newIndex, item);
    _updateAppState();
  }

  @override
  Widget build(BuildContext context) {
    // 단순한 가로 스크롤 Row
    return Container(
      width: widget.width,
      height: widget.height,
      color: Colors.transparent,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            // + 버튼
            GestureDetector(
              onTap: _pickImage,
              child: Container(
                width: widget.height ?? 50,
                height: widget.height ?? 50,
                color: widget.plusButtonColor,
                child: const Icon(Icons.add, color: Colors.white),
              ),
            ),
            const SizedBox(width: 8),
            // 이미지들
            for (int i = 0; i < _images.length; i++)
              _buildImageItem(i, _images[i]),
          ],
        ),
      ),
    );
  }

  Widget _buildImageItem(int index, String base64Str) {
    Uint8List? imageBytes;
    try {
      imageBytes = base64Decode(base64Str);
    } catch (_) {}

    Widget imageWidget;
    if (imageBytes != null) {
      imageWidget = Image.memory(
        imageBytes,
        fit: BoxFit.cover,
        errorBuilder: (context, error, stackTrace) {
          return Container(color: widget.placeholderColor);
        },
      );
    } else {
      imageWidget = Container(color: widget.placeholderColor);
    }

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4.0),
      width: widget.height ?? 50,
      height: widget.height ?? 50,
      child: Stack(
        children: [
          Positioned.fill(child: imageWidget),
          Positioned(
            right: 0,
            top: 0,
            child: GestureDetector(
              onTap: () => _removeImage(index),
              child: Container(
                width: 24,
                height: 24,
                color: widget.removeButtonColor,
                child: const Icon(Icons.close, size: 18, color: Colors.white),
              ),
            ),
          ),
          // enableReorder == true 이면 drag handle 표시 (실제 reorder 기능 구현 필요)
          if (widget.enableReorder)
            Positioned(
              left: 0,
              bottom: 0,
              child: Container(
                width: 24,
                height: 24,
                color: Colors.black54,
                child: const Icon(Icons.drag_handle,
                    color: Colors.white, size: 18),
              ),
            ),
        ],
      ),
    );
  }
}
