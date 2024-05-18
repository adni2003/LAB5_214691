import 'package:flutter/material.dart';
import 'otp.dart'; // Import the OTP input page

class AccountActivationPage extends StatefulWidget {
  final String factoryTitle; // Accept factoryTitle as a parameter

  const AccountActivationPage({Key? key, required this.factoryTitle})
      : super(key: key);

  @override
  _AccountActivationPageState createState() => _AccountActivationPageState();
}

class _AccountActivationPageState extends State<AccountActivationPage> {
  bool _isChecked = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Account Activation'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Image.asset(
                'assets/upm3.jpg',
                width: 150, // Adjust the width of the image
                height: 100, // Adjust the height of the image
              ),
              Text(
                'Welcome !',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 40.0),
              Container(
                width: double
                    .infinity, // Set width to occupy the entire width of the screen
                height: 300.0,
                decoration: BoxDecoration(
                  color: Colors.pink,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                padding: EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Enter your mobile number to activate your account.',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18.0,
                                ),
                              ),
                              SizedBox(height: 10.0),
                              Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.info,
                                    color: Colors.white,
                                  ),
                                  SizedBox(width: 5.0),
                                  Text(
                                    'i',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18.0,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.0),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.flag,
                          color: Colors.white,
                        ),
                        SizedBox(width: 5.0),
                        Text(
                          '+60',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                          ),
                        ),
                        SizedBox(width: 10.0),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 10.0),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'Enter your phone number',
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20.0),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => OTPInputPage(
                                  factoryTitle: widget.factoryTitle)),
                        );
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            vertical: 15.0), // Added vertical padding
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 215, 171, 232),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Center(
                          child: Text(
                            'Get Activation Code',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.0), // Add this SizedBox for spacing
              GestureDetector(
                onTap: () {
                  setState(() {
                    _isChecked = !_isChecked;
                  });
                },
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Checkbox(
                        value: _isChecked,
                        onChanged: (value) {
                          setState(() {
                            _isChecked = value!;
                          });
                        },
                      ),
                      Text(
                        'I agree to the terms & conditions',
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Text(
                'Disclaimer | Privacy statement',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 16.0,
                  decoration: TextDecoration.underline,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20.0),
              Text(
                'Copyright UPM & Kejuruteraan Minyak Sawit CCS Sdn. Bhd.',
                style: TextStyle(
                  fontSize: 16.0,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
