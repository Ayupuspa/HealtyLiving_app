import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search'),
        backgroundColor: Color.fromARGB(255, 177, 114, 232),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                hintText: 'Search...',
                filled: true,
                fillColor: Colors.grey[200],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide.none,
                ),
                contentPadding: EdgeInsets.symmetric(horizontal: 15.0),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Search Results',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView(
                children: <Widget>[
                  _buildSearchResultItem('Healthy Food'),
                  _buildSearchResultItem('Meditation'),
                  _buildSearchResultItem('Medicare'),
                  _buildSearchResultItem('Workout'),
                  _buildSearchResultItem('Jogging'),
                  _buildSearchResultItem('Habit'),
                  _buildSearchResultItem('Lifestyle'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSearchResultItem(String title) {
    return ListTile(
      title: Text(title),
      onTap: () {
      },
    );
  }
}
