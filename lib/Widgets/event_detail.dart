import 'package:flutter/material.dart';

class EventDetails extends StatelessWidget {
  final String eventName;
  final String eventType;
  final String hostInformation;
  final String meetingID;
  final String eventDescription;

  EventDetails({
    required this.eventName,
    required this.eventType,
    required this.hostInformation,
    required this.meetingID,
    required this.eventDescription,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              eventName,
              style: TextStyle(
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple,
              ),
            ),
            SizedBox(height: 16.0),
            EventDetailItem(title: 'Event Type', value: eventType),
            EventDetailItem(title: 'Host', value: hostInformation),
            EventDetailItem(title: 'Meeting ID', value: meetingID),
            SizedBox(height: 16.0),
            Text(
              'Description:',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              eventDescription,
              style: TextStyle(fontSize: 16.0, color: Colors.grey[700]),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                print('Joining the event: $eventName');
              },
              child: Text('Join Event'),
              style: ElevatedButton.styleFrom(
                primary: Colors.deepPurple,
                onPrimary: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class EventDetailItem extends StatelessWidget {
  final String title;
  final String value;

  EventDetailItem({required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 4.0),
        Text(
          value,
          style: TextStyle(fontSize: 16.0, color: Colors.grey[700]),
        ),
        SizedBox(height: 8.0),
      ],
    );
  }
}
