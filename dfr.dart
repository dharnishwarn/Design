import 'package:flutter/material.dart';

class CourseDetailPage extends StatelessWidget {
  final List<Map<String, String>> videoList = [
    {
      'title': 'Introduction to Flutter',
      'duration': '20:00 mins | 50 MB',
    },
    {
      'title': 'Installing Flutter on Windows',
      'duration': '23:00 mins | 56 MB',
    },
    {
      'title': 'Setup Emulator on Windows',
      'duration': '28:00 mins | 59 MB',
    },
    {
      'title': 'Creating Our First App',
      'duration': '31:00 mins | 62 MB',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text('Flutter', style: TextStyle(color: Colors.black)),
        actions: [
          Icon(Icons.notifications_none, color: Colors.black),
          SizedBox(width: 12),
        ],
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              children: [
                Image.network(
                  "assts/download.jpeg",
                 height: 160,
                  fit: BoxFit.contain,
                ),
                SizedBox(height: 8),
                Text(
                  'Flutter Complete Course',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Created by Dear Programmer\n55 Videos',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.grey[600]),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ChoiceChip(label: Text('Videos'), selected: true),
                    SizedBox(width: 10),
                    ChoiceChip(label: Text('Description'), selected: false),
                  ],
                ),
                SizedBox(height: 10),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: videoList.length,
              itemBuilder: (context, index) {
                final video = videoList[index];
                return ListTile(
                  leading: Icon(Icons.play_circle_outline, color: Colors.deepPurple),
                  title: Text(video['title']!),
                  subtitle: Text(video['duration']!),
                  onTap: () {
                    // Handle video play
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}