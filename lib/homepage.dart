import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  HomePage({super.key});
  final List<String> days = ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        backgroundColor: Color.fromARGB(255, 123, 134, 233),
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              Navigator.pushNamed(context, '/settings');
            },
          ),
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {
              Navigator.pushNamed(context, '/person');
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text(
              "Welcome to the Schedule App!",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                fontFamily: "Helvetica",
              ),
            ),
            Image.asset(
              'images/stary_night.jpeg',
              width: 300,
              height: 300,
            ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              color: Color.fromARGB(255, 123, 134, 233),
              width: 400,
              height: 50,
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "See your schedule for the week:",
                  style: TextStyle(
                    fontSize: 20,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Expanded(child: ListView.separated(
              itemBuilder:(context, index){
                return ListTile(
                  leading: Icon(Icons.calendar_today),
                  title:Text(days[index]),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: (){
                    Navigator.pushNamed(context, '/details');
                  },
                );
              }, itemCount: 7, 
              separatorBuilder: (context, index) {
                return SizedBox(
                  height: 5,
                );
              },
              )
              ),
          ],
        ),
      ),
    );
  }
  
}
