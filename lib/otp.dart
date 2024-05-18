import 'package:flutter/material.dart';
import 'main.dart';
import 'package:lab5_214691/engineer_list.dart'; // Import the main.dart file

class OTPInputPage extends StatelessWidget {
  final String factoryTitle;

  OTPInputPage({required this.factoryTitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OTP'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image.asset(
              'assets/upm3.jpg',
              width: 150, // Adjust the width of the image
              height: 100, // Adjust the height of the image
            ),
            Text(
              'Welcome',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30),
            Container(
              padding: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 241, 235, 235),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Enter the activation code received via SMS.',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 20),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Enter OTP',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        '0/6',
                        style: TextStyle(fontSize: 10),
                      ),
                      SizedBox(width: 10),
                    ],
                  ),
                  SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                EngineerListPage(factoryName: factoryTitle)),
                      );
                    },
                    child: Text.rich(
                      TextSpan(
                        text: "Didn't receive? ",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Tap here',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.blue,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                EngineerListPage(factoryName: 'Factory 1')),
                      );
                    },
                    child: Container(
                      width: 150,
                      height: 50,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 248, 211, 255),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Text(
                        'Activate',
                        style: TextStyle(
                          color: Colors.purple,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 50),
            Center(
              child: GestureDetector(
                onTap: () {
                  // Handle Disclaimer | Privacy statement tap
                },
                child: Text(
                  'Disclaimer | Privacy statement',
                  style: TextStyle(
                    fontSize: 16.0,
                    decoration: TextDecoration.underline,
                    color: Colors.blue,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Center(
              child: Text(
                'Copyright UPM & Kejuruteraan Minyak Sawit CCS Sdn. Bhd.',
                style: TextStyle(
                  fontSize: 16.0,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
