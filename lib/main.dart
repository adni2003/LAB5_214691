import 'package:flutter/material.dart';
import 'accountactive.dart';
import 'griddashboard.dart';
import 'griddashboard2.dart';
import 'engineer_list.dart';
import 'notification.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Factory Dashboard',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  int _selectedFactory = 1;
  int _selectedIndex = 1;
  String _factoryTitle = 'Factory 1'; // Added factory title

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      if (index == 0) {
        // Engineer List
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => AccountActivationPage(
                    factoryTitle: 'Factory 1',
                  )),
        );
      } else if (index == 1) {
        // Current Dashboard - Already on Home page, no need to navigate
      } else if (index == 2) {
        // Notification Settings
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => NotificationPage()),
        );
      }
    });
  }

  void _selectFactory(int factoryIndex, String factoryTitle) {
    setState(() {
      _selectedFactory = factoryIndex;
      _factoryTitle = factoryTitle;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Center(
          child: Text(_factoryTitle),
        ),
        backgroundColor: Color.fromARGB(255, 242, 245, 246),
        actions: [
          IconButton(
            onPressed: () {
              // Handle settings icon press
            },
            icon: Icon(Icons.settings),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: _selectedFactory == 1 ? GridDashboard() : GridDashboard2(),
            ),
          ),
          Container(
            color: Colors.grey,
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                _buildFactoryButton(
                  buttonText: 'Factory 1',
                  factoryIndex: 1,
                  selectedFactory: _selectedFactory,
                  factoryTitle: 'Factory 1',
                  onPressed: () {
                    _selectFactory(1, 'Factory 1');
                  },
                ),
                _buildFactoryButton(
                  factoryIndex: 2,
                  buttonText: 'Factory 2',
                  selectedFactory: _selectedFactory,
                  factoryTitle: 'Factory 2',
                  onPressed: () {
                    _selectFactory(2, 'Factory 2');
                  },
                ),
              ],
            ),
          ),
        ],
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

  Widget _buildFactoryButton({
    required int factoryIndex,
    required int selectedFactory,
    required String buttonText,
    required String factoryTitle,
    required VoidCallback onPressed,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      padding: EdgeInsets.all(8),
      child: TextButton.icon(
        onPressed: onPressed,
        icon: Icon(Icons.factory),
        label: Text(buttonText),
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.resolveWith<Color>((states) {
            return selectedFactory == factoryIndex
                ? Colors.deepPurple
                : Colors.deepPurple;
          }),
        ),
      ),
    );
  }
}
