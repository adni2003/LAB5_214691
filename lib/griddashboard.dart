import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class GridDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      margin: const EdgeInsets.symmetric(
          horizontal: 5, vertical: 5), // Adjust margin as needed
      padding: EdgeInsets.all(8), // Adjust padding as needed
      decoration: BoxDecoration(
        color: Colors.white, // White background color
        borderRadius: BorderRadius.circular(10), // Add rounded corners
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 247, 244, 244)
                .withOpacity(0.5), // Add shadow color
            spreadRadius: 3, // Spread radius
            blurRadius: 7, // Blur radius
            offset: Offset(0, 3), // Shadow offset
          ),
        ],
      ),
      child: Center(
        // Center the Column widget
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.center, // Center the text horizontally
          children: [
            Text(
              'ABD1234 IS UNREACHABLE !', // Add your dashboard title here
              style: TextStyle(
                fontSize: 20, // Adjust font size as needed
                fontWeight: FontWeight.bold, // Adjust font weight as needed
              ),
            ),

            SizedBox(height: 20), // Add spacing between text and dashboards
            GridView.count(
              shrinkWrap: true,
              crossAxisCount: 2,
              children: <Widget>[
                GridItem(
                  title: "Steam Pressure",
                  value: "0.0 bar",
                ),
                GridItem(
                  title: "Steam Flow",
                  value: "0.0 T/H",
                ),
                GridItem(
                  title: "Water Level",
                  value: "0.0%",
                ),
                GridItem(
                  title: "Power Frequency",
                  value: "0.00 Hz",
                ),
              ],
            ),
            SizedBox(
                height: 15), // Add spacing between dashboards and timestamp
            Text(
              '${DateTime.now()}', // Add your timestamp here
              style: TextStyle(
                fontSize: 16, // Adjust font size as needed
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class GridItem extends StatelessWidget {
  final String title;
  final String value;

  const GridItem({
    Key? key,
    required this.title,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Expanded(
            child: Center(
              child: SfRadialGauge(
                axes: <RadialAxis>[
                  RadialAxis(
                    minimum: 0,
                    maximum: 100,
                    showLabels: false,
                    showTicks: false,
                    pointers: <GaugePointer>[
                      MarkerPointer(value: 50),
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 8),
          Text(
            value,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
