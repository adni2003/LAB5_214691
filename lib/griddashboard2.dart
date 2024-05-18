import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class GridDashboard2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
          horizontal: 5, vertical: 5), // Adjust margin as needed
      padding: EdgeInsets.all(
          10), // Adjust padding as needed// Adjust padding as needed
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
      ), // White background color
      child: Center(
        // Center the Column widget
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.center, // Center the text horizontally
          children: [
            Text(
              '1549.7kW', // Add your dashboard title here
              style: TextStyle(
                fontSize: 40, // Adjust font size as needed
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
                  value: "34.19 bar",
                  gaugeValue: 34.19, // Example gauge value
                ),
                GridItem(
                  title: "Steam Flow",
                  value: "22.82 T/H",
                  gaugeValue: 22.82, // Example gauge value
                ),
                GridItem(
                  title: "Water Level",
                  value: "55.41%",
                  gaugeValue: 55.41, // Example gauge value
                ),
                GridItem(
                  title: "Power Frequency",
                  value: "50.08 Hz",
                  gaugeValue: 50.08, // Example gauge value
                ),
              ],
            ),
            SizedBox(
                height: 20), // Add spacing between dashboards and timestamp
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
  final double gaugeValue; // Add gauge value parameter

  const GridItem({
    Key? key,
    required this.title,
    required this.value,
    required this.gaugeValue, // Add gauge value parameter
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
                      getMarkerPointer(
                          gaugeValue), // Use getMarkerPointer function
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

  // Function to get marker pointer with appropriate color
  GaugePointer getMarkerPointer(double value) {
    Color getColor(double value) {
      if (value > 30) {
        return Colors.green;
      } else if (value < 29) {
        return Colors.red;
      } else {
        return Colors.grey;
      }
    }

    return MarkerPointer(
      value: value,
      markerOffset: -12,
      markerHeight: 10,
      markerWidth: 10,
      color: getColor(value), // Use appropriate color based on value
    );
  }
}
