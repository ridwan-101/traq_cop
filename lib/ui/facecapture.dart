import 'package:flutter/material.dart';
import 'package:traq_cop/ui/succes_facecapture.dart';

class FaceCapture extends StatefulWidget {
  const FaceCapture({super.key});

  @override
  State<FaceCapture> createState() => _FaceCaptureState();
}

class _FaceCaptureState extends State<FaceCapture> {
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
                    'images/faceid.png',
                    width: 319,
                    height: 369,
                  ),
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
                      Image.asset(
                        'images/cancel.png',
                      ),
                      Image.asset(
                        'images/ok.png',
                      ),
                    ],
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
                              builder: (context) => const SucessFaceCapture()),
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
