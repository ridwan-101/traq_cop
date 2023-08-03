import 'package:flutter/material.dart';
import 'package:camera/camera.dart';

class CameraPreviewScreen extends StatefulWidget {
  final List<CameraDescription> cameras;

  const CameraPreviewScreen({required this.cameras});

  @override
  _CameraPreviewScreenState createState() => _CameraPreviewScreenState();
}

class _CameraPreviewScreenState extends State<CameraPreviewScreen> {
  late CameraController _controller;
  bool _isReady = false;

  @override
  void initState() {
    super.initState();
    _initializeCamera();
  }

  Future<void> _initializeCamera() async {
    final camera = widget.cameras.first;

    _controller = CameraController(
      camera,
      ResolutionPreset.high,
    );

    await _controller.initialize();

    if (!mounted) return;

    setState(() {
      _isReady = true;
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!_isReady) {
      return Container(); // You can show a loading indicator here.
    }

    return AspectRatio(
      aspectRatio: 3.14159,
      child: CircleAvatar(
        child: CameraPreview(
          _controller,
        ),
      ),
    );
  }
}
