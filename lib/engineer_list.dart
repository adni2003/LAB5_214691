import 'package:flutter/material.dart';
import 'factory2.dart';

class EngineerListPage extends StatefulWidget {
  final String factoryName;

  const EngineerListPage({Key? key, required this.factoryName})
      : super(key: key);

  @override
  _EngineerListPageState createState() => _EngineerListPageState();
}

class _EngineerListPageState extends State<EngineerListPage> {
  int _selectedIndex = 0; // Index of the selected bottom navigation bar item

  // Define navigation bar items
  static const List<Widget> _widgetOptions = <Widget>[
    Text('Engineer List'), // Placeholder for Engineer List page
    Text('Home'), // Placeholder for Home page
    Text('Notifications'), // Placeholder for Notifications page
  ];

  // Handle item selection in the bottom navigation bar
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.factoryName),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                width: 300.0, // Specify width
                height: 500.0, // Specify height
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 191, 181, 181),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20),
                    // Add engineer list widgets here
                    // Example:
                    _buildEngineerTile('Ben', '+60123456789'),
                    _buildEngineerTile('Testing 1', '+60198765432'),
                    _buildEngineerTile('Hello 1', '+60198765456'),
                    // Add more engineer tiles as needed
                    SizedBox(height: 20),
                    Expanded(
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: FloatingActionButton(
                          onPressed: () {
                            // Handle the "+" button press
                          },
                          child: Icon(Icons.add),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                  height:
                      20), // Add some space between the container and buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 150, // Set desired width
                    height: 100, // Set desired height
                    child: ElevatedButton.icon(
                      onPressed: () {
                        // Handle the first button press
                      },
                      icon: Icon(Icons.factory),
                      label: Text('Factory 1'),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(width: 10), // Add space between buttons
                  Container(
                    width: 150, // Set desired width
                    height: 100, // Set desired height
                    child: ElevatedButton.icon(
                      onPressed: () {
                        // Handle the second button press
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Factory2Page()),
                        );
                      },
                      icon: Icon(Icons.factory),
                      label: Text('Factory 2'),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
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
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.engineering),
            label: 'Engineer List',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }

  // Function to build engineer list tile
  Widget _buildEngineerTile(String name, String phoneNumber) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      width: 300.00,
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 5),
          Text(
            phoneNumber,
            style: TextStyle(fontSize: 14, color: Colors.grey),
          ),
          SizedBox(height: 5),
        ],
      ),
    );
  }
}
