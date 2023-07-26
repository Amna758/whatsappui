import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text('WhatsApp'),
            bottom: const TabBar(tabs: [
              // Tab(
              //   child: Icon(Icons.more_horiz_outlined),
              // ),
              Tab(
                child: Icon(Icons.camera_alt),
              ),
              Tab(
                child: Text('Chats'),
              ),
              Tab(
                child: Text('Status'),
              ),
              Tab(
                child: Text('Calls'),
              ),
            ]),
            actions: [
              Icon(Icons.search),
              PopupMenuButton(
                  child: Icon(Icons.more_vert_outlined),
                  itemBuilder: (context) => [
                        PopupMenuItem(value: 1, child: Text('New group')),
                        PopupMenuItem(value: 2, child: Text('Settings')),
                        PopupMenuItem(value: 3, child: Text('Logout'))
                      ]),
            ],
            //
          ),
          body: TabBarView(children: [
            Text('camera'),
            ListView.builder(
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/st.jpg'),
                  ),
                  title: Text('john wick'),
                  subtitle: Text('where is my dog'),
                  trailing: Text('6:26 pm'),
                );
              },
            ),
            ListView.builder(
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  leading: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                          color: const Color.fromARGB(255, 29, 221, 36),
                          width: 3),
                    ),
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/st.jpg'),
                    ),
                  ),
                  title: Text('john wick'),
                  subtitle: Text('10 minutes ago'),
                );
              },
            ),
            ListView.builder(
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/st.jpg'),
                    ),
                    title: Text('john wick'),
                    subtitle: Text(index / 2 == 0
                        ? 'You  missed voicecall'
                        : 'call time is 12:23s'),
                    trailing:
                        Icon(index / 2 == 0 ? Icons.phone : Icons.video_call));
              },
            ),
          ]),
        ));
  }
}
