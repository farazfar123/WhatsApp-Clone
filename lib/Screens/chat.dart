import 'package:flutter/material.dart';
import 'package:secassignment/Screens/call.dart';
import 'package:secassignment/Screens/status.dart';
import 'package:secassignment/customWidget.dart';

class Chatt extends StatelessWidget {
  const Chatt({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(      
          appBar: AppBar(
            backgroundColor: const Color.fromARGB(255, 30, 120, 33),
            title: const Padding(
              padding: EdgeInsets.only(top: 8.00,left: 7.00),
              child: Text(
                'WhatsApp',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 22),
              ),
            ),
            centerTitle: false,
            actions: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.search),color: Colors.white,),
              IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert),color: Colors.white)
            ],
          ),
       
          body: Column(
            children: [
              Container(
                color: const Color.fromARGB(255, 30, 120, 33),
                child: const TabBar(
                  indicatorPadding: EdgeInsets.symmetric(horizontal: -70.00),
                  labelPadding: EdgeInsets.symmetric(horizontal: 150.00),
                    labelColor: Colors.white,
                    unselectedLabelColor: Colors.grey,
                    indicatorColor: Colors.green,
                    labelStyle: TextStyle(color: Colors.white),
                    isScrollable: true,
                    indicatorWeight: 3,
                    tabs: [
                      Tab(
                        text: 'Chats' ,
                      ),
                      Tab(
                        text: 'Status',

                      ),
                      Tab(
                        text: 'Calls',
                      )
                    ]),
              ),
              const Flexible(flex: 1,child: TabBarView(children: [
                MyChat(),
                MyStatus(),
                MyCall()
              ]),)
            ],
          ),
        ));
  }
}
