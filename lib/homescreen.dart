import 'package:flutter/material.dart';
import 'package:main_project_3/quizScreen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.yellowAccent,
        title: Text('Home'),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: Text("Logout"),
                  content: Text("Are you sure you want to log out?"),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text("Cancel"),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                        Navigator.pop(context);
                      },
                      child: Text("Logout"),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
      body: Container(
        // Adding the background image here
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                'assets/images/home.jpg'), // Use the correct path of your image here
            fit: BoxFit.cover, // Ensures the image covers the entire screen
          ),
        ),
        child: Center(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: CircleBorder(),
              padding: EdgeInsets.all(50),
              backgroundColor: const Color.fromARGB(255, 227, 205, 5),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => QuizScreen()),
              );
            },
            child: Text(
              "Start",
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
