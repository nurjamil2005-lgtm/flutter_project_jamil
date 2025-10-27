import 'package:flutter/material.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({super.key});

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifications'),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz)),
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Today',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Notif(
            imagePath: "assets/profile/prof3.jpg",
            title: 'Princess shared your post',
            subtitle: '1h',
          ),
          Notif(
            imagePath: "assets/profile/prof1.jpg",
            title: 'Jem added you as a friend',
            subtitle: '20h',
          ),
          Notif(
            imagePath: "assets/profile/prof4.jpg",
            title: 'Prince recently shared 1 post',
            subtitle: '23h ',
          ),
        ],
      ),
    );
  }

  Widget Notif({
    required String imagePath,
    required String title,
    required String subtitle,
  }) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(imagePath),
      ),
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: const Icon(Icons.more_vert),
    );
  }
}
