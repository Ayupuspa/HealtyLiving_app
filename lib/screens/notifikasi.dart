import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications'),
        backgroundColor: Color.fromARGB(255, 177, 114, 232),
      ),
      body: ListView(
        children: <Widget>[
          _buildNotificationItem(
            icon: Icons.chat,
            title: 'New Message',
            description: 'Hallo',
          ),
          _buildNotificationItem(
            icon: Icons.local_hospital,
            title: 'Health Alert',
            description: 'Reminder: Don\'t forget to take your medication',
          ),
          _buildNotificationItem(
            icon: Icons.library_books,
            title: 'New Guide',
            description: 'Check out our latest guide on healthy eating',
          ),
        ],
      ),
    );
  }

  Widget _buildNotificationItem({IconData icon = Icons.notification_important, String title = 'Title', String description = 'Description'}) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      subtitle: Text(description),
      onTap: () {
      },
    );
  }
}
