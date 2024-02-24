// ignore: file_names
import 'package:flutter/material.dart';
// import 'package:secassignment/color.dart';

class MyChat extends StatelessWidget {
  const MyChat({super.key});

  @override
  Widget build(BuildContext context) {
    List chat = [
      {
        'name': 'Faraz',
        'msg': 'Hi,How are you',
        'count': '6',
        'time': '3:22 pm'
      },
      {
        'name': 'Asad',
        'msg': 'Office jldi ana',
        'count': '2',
        'time': '3:22 pm'
      },
      {'name': 'Mom', 'msg': 'Kaha ho', 'count': '1', 'time': '3:22 pm'},
      {'name': 'Jalal', 'msg': 'ok', 'count': '0', 'time': '3:22 pm'},
      {
        'name': 'Usman',
        'msg': 'Maymar kb ayega?',
        'count': '1',
        'time': '3:22 pm'
      },
      {
        'name': 'Faraz',
        'msg': 'Hi,How are you',
        'count': '6',
        'time': '3:22 pm'
      },
      {
        'name': 'Asad',
        'msg': 'Office jldi ana',
        'count': '2',
        'time': '3:22 pm'
      },
      {'name': 'Mom', 'msg': 'Kaha ho', 'count': '1', 'time': '3:22 pm'},
      {'name': 'Jalal', 'msg': 'ok', 'count': '0', 'time': '3:22 pm'},
      {
        'name': 'Usman',
        'msg': 'Maymar kb ayega?',
        'count': '1',
        'time': '3:22 pm'
      },
    ];

    return Padding(
      padding: const EdgeInsets.only(bottom: 10.00),
      child: ListView.builder(
          itemCount: chat.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(
                chat[index]['name'],
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                chat[index]['msg'],
                style: const TextStyle(fontWeight: FontWeight.normal),
              ),
              leading: const CircleAvatar(
                backgroundImage: AssetImage('Assets/images/user.jpeg'),
              ),
              trailing: Text(
                chat[index]['time'],
                style: const TextStyle(fontSize: 12),
              ),
            );
          }),
    );
  }
}

statusWidget(img, name, time) {
  return ListTile(
    leading: CircleAvatar(backgroundImage: AssetImage('Assets/images/$img.jpeg'),
    ),
    title: Text(name,style: TextStyle(fontWeight: FontWeight.bold),),
    subtitle: Text(time),
  );
}
