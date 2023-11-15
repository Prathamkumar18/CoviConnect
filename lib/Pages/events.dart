import 'dart:ui';
import 'package:covid_19/Widgets/event_detail.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';

class CovidEvents extends StatefulWidget {
  const CovidEvents({Key? key});

  @override
  State<CovidEvents> createState() => _CovidEventsState();
}

class _CovidEventsState extends State<CovidEvents> {
  // List of events
  final List<EventDetailsData> events = [
    EventDetailsData(
      eventName: 'COVID-19 Vaccination Webinar',
      eventType: 'Webinar',
      hostInformation: 'Health Organization XYZ',
      meetingID: '17029597',
      eventDescription:
          'Join us for an informative webinar on the importance and safety of COVID-19 vaccinations. Experts will share insights and address common concerns.',
    ),
    // Add more events here...
    EventDetailsData(
      eventName: 'Community Health Forum',
      eventType: 'Discussion',
      hostInformation: 'Local Health Department',
      meetingID: 'healthforum456',
      eventDescription:
          'Participate in a community health forum to discuss various health topics, including COVID-19 updates and preventive measures.',
    ),
    EventDetailsData(
      eventName: 'Virtual Yoga Session for Mental Well-being',
      eventType: 'Fitness Session',
      hostInformation: 'Wellness Center',
      meetingID: 'yogasession789',
      eventDescription:
          'Join a virtual yoga session focused on mental well-being during these challenging times. Relax and rejuvenate!',
    ),
    EventDetailsData(
      eventName: 'COVID-19 Testing Drive',
      eventType: 'Community Service',
      hostInformation: 'Red Cross Society',
      meetingID: 'testingdrive012',
      eventDescription:
          'Be a part of our COVID-19 testing drive. Help us ensure the health and safety of our community through widespread testing.',
    ),
    EventDetailsData(
      eventName: 'Online Cooking Class: Immune-Boosting Recipes',
      eventType: 'Cooking Class',
      hostInformation: 'Nutrition Experts',
      meetingID: 'cookingclass345',
      eventDescription:
          'Learn to prepare immune-boosting recipes in this online cooking class. Stay healthy and enjoy delicious meals!',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEAEFF2),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        flexibleSpace: ClipRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: Container(
              color: Colors.transparent,
            ),
          ),
        ),
        backgroundColor: Color(0xffEAEFF2),
        elevation: 0.0,
        centerTitle: true,
        systemOverlayStyle:
            SystemUiOverlayStyle(statusBarColor: Colors.transparent),
        title: Text(
          "Join Covid Event",
          style: TextStyle(
              fontSize: 30, color: Colors.green, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: BouncingScrollPhysics(),
        child: Column(
          children: events.map((event) {
            return Padding(
              padding: const EdgeInsets.only(top: 30, bottom: 20.0),
              child: EventDetails(
                eventName: event.eventName,
                eventType: event.eventType,
                hostInformation: event.hostInformation,
                meetingID: event.meetingID,
                eventDescription: event.eventDescription,
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

class EventDetailsData {
  final String eventName;
  final String eventType;
  final String hostInformation;
  final String meetingID;
  final String eventDescription;

  EventDetailsData({
    required this.eventName,
    required this.eventType,
    required this.hostInformation,
    required this.meetingID,
    required this.eventDescription,
  });
}
