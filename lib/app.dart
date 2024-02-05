import 'package:flutter/material.dart';

class RoomInfoCard extends StatelessWidget {
  final int numberOfRooms;
  final List<int> occupants;
  final List<double> bills;

  const RoomInfoCard({super.key,
    required this.numberOfRooms,
    required this.occupants,
    required this.bills,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.all(16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Room Information',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text('Number of Rooms: $numberOfRooms'),
            SizedBox(height: 10),
            Text('Occupants per Room:'),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(
                occupants.length,
                    (index) => Text('Room ${index + 1}: ${occupants[index]}'),
              ),
            ),
            SizedBox(height: 10),
            Text('Bills per Room:'),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(
                bills.length,
                    (index) => Text('Room ${index + 1}: \$${bills[index].toStringAsFixed(2)}'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
