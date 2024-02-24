import 'package:flutter/material.dart';

class MyCall extends StatelessWidget {
  const MyCall({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView(
          children: [
            customWidget('Faraz', 'Today, 12:45 Pm', 'userr2'),
            customWidget('Asad', 'Yesterday, 2:45 Pm', 'userr1'),
            customWidget('Ali', 'Today, 1:45 Am', 'userr2'),
            customWidget('Usman', 'Yesterday, 2:45 Pm', 'userr1'),
            customWidget('Jalal', 'Today, 12:45 Pm', 'userr2'),
            customWidget('Ammi', 'Yesterday, 2:45 Pm', 'userr1'),
            customWidget('Papa', 'Today, 12:45 Pm', 'user'),
            customWidget('Sudais', 'Yesterday, 2:45 Pm', 'userr1'),
            customWidget('Hamza', 'Today, 12:45 Pm', 'userr2'),
            customWidget('Hassan', 'Yesterday, 2:45 Pm', 'userr1'),
          ],
        ),
      ),
    );
  }
}

customWidget(
  name,
  msg,
  img,
) {
  return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage('Assets/images/$img.jpeg'),
      ),
      title: Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
      subtitle:
          Text(msg, style: const TextStyle(fontWeight: FontWeight.normal)),
      trailing: const Icon(Icons.call_made));
}
