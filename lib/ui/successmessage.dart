import 'package:flutter/material.dart';

class SucessMessage extends StatefulWidget {
  const SucessMessage({super.key});

  @override
  State<SucessMessage> createState() => _SucessMessageState();
}

class _SucessMessageState extends State<SucessMessage> {
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
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.arrow_back),
                        onPressed: () {
                          // Implement the functionality to go back if needed.
                        },
                      ),
                    ],
                  ),
                  Image.asset(
                    'images/okay.png',
                    height: 400,
                    width: 400,
                  ),
                  const Center(
                    child: Text(
                      "You have Successfully clocked in \n to TraqCop ",
                      style: TextStyle(
                        color: Color(0xFF5FD788),
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context); // Go back to the previous screen
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF1511F4),
                      fixedSize: const Size(507, 62),
                    ),
                    child: const Text(
                      'Back',
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
