import 'package:flutter/material.dart';

class ErrorFaceCapture extends StatefulWidget {
  const ErrorFaceCapture({super.key});

  @override
  State<ErrorFaceCapture> createState() => _ErrorFaceCaptureState();
}

class _ErrorFaceCaptureState extends State<ErrorFaceCapture> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/traqbg.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width >= 772
                  ? 772
                  : MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height >= 895
                  ? 895
                  : MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                border: Border.all(color: Colors.grey, width: 1.5),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.arrow_back),
                      SizedBox(width: 400),
                      Text(
                        "Step of 2",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Image.asset(
                    'images/errorfaceid.png',
                    width: 319,
                    height: 369,
                  ),
                  const Text(
                    "Please try again",
                    style: TextStyle(
                      color: Color(0xFFFB0D0D),
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Row(
                      children: [
                        Image.asset(
                          'images/cancel.png',
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        // Handle button press
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF1511F4),
                        fixedSize: const Size(507, 62),
                      ),
                      child: const Text(
                        'Submit',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
