import 'package:flutter/material.dart';
import 'package:camera/camera.dart';

import 'dart:io';

import 'package:traq_cop/ui/successmessage.dart';

class FaceCapture extends StatefulWidget {
  const FaceCapture({Key? key}) : super(key: key);

  @override
  State<FaceCapture> createState() => _FaceCaptureState();
}

class _FaceCaptureState extends State<FaceCapture> {
  List<CameraDescription>? _cameras;
  late CameraController _controller;
  bool _isCameraReady = false;
  File? _capturedImageFile;

  @override
  void initState() {
    super.initState();
    _initializeCamera();
  }

  Future<void> _initializeCamera() async {
    _cameras = await availableCameras();
    if (_cameras!.isNotEmpty) {
      final camera = _cameras![0];

      _controller = CameraController(
        camera,
        ResolutionPreset.high,
      );

      await _controller.initialize();

      if (!mounted) return;

      setState(() {
        _isCameraReady = true;
      });
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future<void> _captureImage() async {
    if (!_controller.value.isInitialized) {
      return;
    }

    try {
      final XFile imageFile = await _controller.takePicture();

      setState(() {
        _capturedImageFile = File(imageFile.path);
      });

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Image captured successfully!'),
          duration: Duration(seconds: 2),
        ),
      );
    } catch (e) {
      // Handle errors that occur during image capture
      print('Error capturing image: $e');
    }
  }

  void _clearCapturedImage() {
    setState(() {
      _capturedImageFile = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/traqbg.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Center(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
              constraints: const BoxConstraints(maxWidth: 772),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                border: Border.all(color: Colors.grey, width: 1.5),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.arrow_back),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      const SizedBox(width: 300),
                      const Text(
                        "Step 2",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  if (_isCameraReady)
                    AspectRatio(
                      aspectRatio: _controller.value.aspectRatio,
                      child: _capturedImageFile != null
                          ? Image.file(_capturedImageFile!)
                          : CameraPreview(_controller),
                    ),
                  const SizedBox(height: 20),
                  const Text(
                    "Center your face to take a snapshot",
                    style: TextStyle(
                      color: Color(0xFF1511F4),
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () {
                          _clearCapturedImage();
                        },
                        child: Image.asset('images/cancel.png'),
                      ),
                      GestureDetector(
                        onTap: () {
                          _captureImage();
                        },
                        child: Image.asset('images/ok.png'),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SucessMessage(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF1511F4),
                      fixedSize: const Size(507, 62),
                    ),
                    child: const Text(
                      'Submit',
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
