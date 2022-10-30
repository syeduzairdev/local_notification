import 'package:flutter/material.dart';
import 'package:local_notifications/services/notification_services/notification.dart.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Local Notification Example"),
      ),
      body: Container(
          child: Center(
        child: ElevatedButton(
            onPressed: () {
              setState(() {
                NotificationService().showNotification(
                    1,
                    "Your Notification Title",
                    "Your Notification Description goes there",
                    10);
              });
            },
            child: Text("Show Notification")),
      )),
    );
  }
}
