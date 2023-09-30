import 'package:flutter/material.dart';
import 'package:faker/faker.dart';

void main() {
  runApp(InfoPage());
}

class InfoPage extends StatelessWidget {
  final Faker faker = Faker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
 
        appBar: AppBar(
          title: Text('Profile Information'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'User Information:',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: <Widget>[
                   Icon(Icons.person),
                  SizedBox(width: 20),
            Text(
              faker.person.firstName(),
              style: TextStyle(fontSize: 24),

            ),
            SizedBox(width: 10),
            Text(
              faker.person.lastName(),
              style: TextStyle(fontSize: 24),
            ),

              ]
            ),
            SizedBox(height: 15),
            Row(
              children: <Widget>[
                Icon(Icons.email_rounded),
                SizedBox(width: 20),
                Text(
              faker.internet.email(),
              style: TextStyle(fontSize: 24),
            ),
            
              ],
            ),
             SizedBox(height: 15),
             Row(
              children: <Widget>[
                Icon(Icons.location_on),
                SizedBox(width: 20),
                Text(
              faker.address.streetAddress(),
              style: TextStyle(fontSize: 24),
            ),
            

              ],
             ),
          ],
        ),
      );
  }
}
