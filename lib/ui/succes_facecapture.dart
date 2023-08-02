import 'package:flutter/material.dart';
import 'package:traq_cop/ui/error_facecapture.dart';

class SucessFaceCapture extends StatefulWidget {
  const SucessFaceCapture({super.key});

  @override
  State<SucessFaceCapture> createState() => _SucessFaceCaptureState();
}

class _SucessFaceCaptureState extends State<SucessFaceCapture> {
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
                    'images/sfaceid.png',
                    width: 319,
                    height: 369,
                  ),
                  const Text(
                    "Success",
                    style: TextStyle(
                      color: Color(0xFF5FD788),
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'images/ok.png',
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
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ErrorFaceCapture()),
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
