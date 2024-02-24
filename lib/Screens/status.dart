import 'package:flutter/material.dart';
import 'package:secassignment/customwidget.dart';

class MyStatus extends StatelessWidget {
  const MyStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('Assets/images/status.jpeg'),
          ),
          title: Text(
            'My Status',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          subtitle: Text('Tap to add status update'),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 235, 235, 235),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 15.00, top: 5.00),
                child: Text("Viewed Updates",
                    style: TextStyle(fontWeight: FontWeight.bold)),
              )
            ],
          ),
        ),
        statusWidget('userr2', "Faraz", '10 minutes ago'),
        statusWidget('userr1', 'Jalal', '30 minutes ago'),
        statusWidget('userr2', 'Ammi', '1 hour ago'),
        statusWidget('userr1', 'Asad', '2 hour ago'),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 235, 235, 235),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 15.00, top: 5.00),
                child: Text(
                  'Muted Updates',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
