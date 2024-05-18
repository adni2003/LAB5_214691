import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Factory 1'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
            top: 20.0), // Menambah jarak 20 di bagian atas
        child: Center(
          child: Column(
            children: <Widget>[
              Container(
                width: 350,
                height: 450,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Text(
                            'Minimum Threshold',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        IconButton(
                          icon: Icon(Icons.info),
                          onPressed: () {
                            // Tindakan yang ingin dilakukan apabila ikon 'i' ditekan
                          },
                        ),
                        IconButton(
                          icon: Icon(Icons.edit),
                          onPressed: () {
                            // Tindakan yang ingin dilakukan apabila butang ikon "pencil" ditekan
                          },
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Center(
                                child: Text(
                                  'Steam',
                                  style: TextStyle(fontSize: 20),
                                ),
                              ),
                              Center(
                                child: Text(
                                  'Pressure',
                                  style: TextStyle(fontSize: 20),
                                ),
                              ),
                              SizedBox(height: 10),
                              Container(
                                width: 150,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Color.fromARGB(255, 32, 28, 28)),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Row(
                                  children: <Widget>[
                                    Expanded(
                                      flex: 3,
                                      child: Container(
                                        height: 50,
                                        color: Colors.blue,
                                        child: Center(
                                          child: Text('29'),
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 1),
                                    Expanded(
                                      child: Container(
                                        height: 50,
                                        color: Colors.grey,
                                        child: Center(
                                          child: Text('bar'),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 20),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Center(
                                child: Text(
                                  'Steam',
                                  style: TextStyle(fontSize: 20),
                                ),
                              ),
                              Center(
                                child: Text(
                                  'Flow',
                                  style: TextStyle(fontSize: 20),
                                ),
                              ),
                              SizedBox(height: 10),
                              Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: const Color.fromARGB(
                                          255, 30, 27, 27)),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Row(
                                  children: <Widget>[
                                    Expanded(
                                      flex: 3,
                                      child: Container(
                                        height: 50,
                                        color: Colors.blue,
                                        child: Center(
                                          child: Text('22'),
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 1),
                                    Expanded(
                                      child: Container(
                                        height: 50,
                                        color: Colors.grey,
                                        child: Center(
                                          child: Text('T/H'),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Center(
                                child: Text(
                                  'Water',
                                  style: TextStyle(fontSize: 20),
                                ),
                              ),
                              Center(
                                child: Text(
                                  'Level',
                                  style: TextStyle(fontSize: 20),
                                ),
                              ),
                              SizedBox(height: 10),
                              Container(
                                width: 150,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Color.fromARGB(255, 32, 28, 28)),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Row(
                                  children: <Widget>[
                                    Expanded(
                                      flex: 3,
                                      child: Container(
                                        height: 50,
                                        color: Colors.blue,
                                        child: Center(
                                          child: Text('53'),
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 1),
                                    Expanded(
                                      child: Container(
                                        height: 50,
                                        color: Colors.grey,
                                        child: Center(
                                          child: Text('%'),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 20),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Center(
                                child: Text(
                                  'Power',
                                  style: TextStyle(fontSize: 20),
                                ),
                              ),
                              Center(
                                child: Text(
                                  'Frequency',
                                  style: TextStyle(fontSize: 20),
                                ),
                              ),
                              SizedBox(height: 10),
                              Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: const Color.fromARGB(
                                          255, 30, 27, 27)),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Row(
                                  children: <Widget>[
                                    Expanded(
                                      flex: 3,
                                      child: Container(
                                        height: 50,
                                        color: Colors.blue,
                                        child: Center(
                                          child: Text('48'),
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 1),
                                    Expanded(
                                      child: Container(
                                        height: 50,
                                        color: Colors.grey,
                                        child: Center(
                                          child: Text('Hz'),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    width: 150, // Sesuaikan dengan lebar yang diinginkan
                    height: 100, // Sesuaikan dengan tinggi yang diinginkan
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(
                          10), // Atur sudut bulatan sesuai keinginan anda
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: ElevatedButton.icon(
                      onPressed: () {
                        // Tindakan yang ingin dilakukan apabila butang ditekan
                      },
                      icon: Icon(Icons.factory),
                      label: Text('Factory 1'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors
                            .transparent, // Atur latar belakang butang menjadi transparan
                        elevation: 0, // Hilangkan bayangan butang
                      ),
                    ),
                  ),
                  Container(
                    width: 150, // Sesuaikan dengan lebar yang diinginkan
                    height: 100, // Sesuaikan dengan tinggi yang diinginkan
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(
                          10), // Atur sudut bulatan sesuai keinginan anda
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: ElevatedButton.icon(
                      onPressed: () {
                        // Tindakan yang ingin dilakukan apabila butang ditekan
                      },
                      icon: Icon(Icons.factory),
                      label: Text('Factory 2'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors
                            .transparent, // Atur latar belakang butang menjadi transparan
                        elevation: 0, // Hilangkan bayangan butang
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.engineering),
            label: 'Engineers',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Notifications',
          ),
        ],
        currentIndex: 2, // Set currentIndex to 2 for Notifications
        selectedItemColor: Colors.blue,
        onTap: (index) {
          // Handle bottom navigation bar item tap here
          if (index == 0) {
            // Navigate to Engineer List Page
            Navigator.pushReplacementNamed(context, '/engineers');
          } else if (index == 1) {
            // Navigate to Home Page
            Navigator.popUntil(
                context, ModalRoute.withName(Navigator.defaultRouteName));
          }
          // Do nothing for index 2 as it's already on the Notification Page
        },
      ),
    );
  }
}
