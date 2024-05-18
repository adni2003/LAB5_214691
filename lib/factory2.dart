import 'package:flutter/material.dart';

class Factory2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Factory 2'),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              Text(
                'Invitation',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Text(
                'Invite users',
                style: TextStyle(fontSize: 20),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: 80),
                  Text(
                    "Owner's name",
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
              SizedBox(height: 2),
              Row(
                children: [
                  SizedBox(width: 2), // Add space between text and container
                  Container(
                    width: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.black),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Enter owner name',
                        contentPadding: EdgeInsets.all(10),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: 80),
                  Text(
                    "Owner's phone number",
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
              SizedBox(height: 2),
              Row(
                children: [
                  Icon(Icons.flag),
                  SizedBox(width: 10),
                  Text('+60'),
                  SizedBox(width: 10),
                  Expanded(
                    child: Container(
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Enter phone number',
                          contentPadding: EdgeInsets.all(10),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Handle submit button press
                },
                child: Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
