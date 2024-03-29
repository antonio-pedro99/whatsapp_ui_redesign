import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatsapp_ui/ThemeSer.dart';
import 'package:whatsapp_ui/message.dart';
import 'package:whatsapp_ui/message_tile.dart';

import 'package:whatsapp_ui/story.dart';
import 'package:whatsapp_ui/story_tile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ThemeSer>(
      create: (_) => ThemeSer(),
      child: Builder(builder: (context) {
        final themeSer = Provider.of<ThemeSer>(context);
        return MaterialApp(
          title: 'Whatsapp UI',
          theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(
                  seedColor: Colors.teal,
                  brightness:
                      themeSer.darkTheme ? Brightness.dark : Brightness.light)),
          home: const MyHomePage(title: "Whatsapp"),
        );
      }),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Message> messages = Message.getMessages();

  Widget _buildStories() {
    return Container(
      padding: const EdgeInsets.all(15),
      height: 200,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            width: 120,
            height: 180,
            decoration: const BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  CircleAvatar(
                    // backgroundColor: Colors.,
                    child: Icon(
                      Icons.add,
                      size: 35,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text("Create story")
                ],
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          StoryTile(
              story: Story(
                  nameOwner: "Noah Pedro",
                  ownerPhoto:
                      "https://images.unsplash.com/photo-1511485977113-f34c92461ad9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
                  content:
                      "https://images.unsplash.com/photo-1642026435491-728f27e17f47?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=392&q=80")),
          const SizedBox(
            width: 10,
          ),
          StoryTile(
              story: Story(
                  nameOwner: "Trevor Luh",
                  ownerPhoto:
                      "https://images.unsplash.com/photo-1546456073-92b9f0a8d413?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
                  content:
                      "https://images.unsplash.com/photo-1641621393945-881745ee9978?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80")),
          const SizedBox(
            width: 10,
          ),
          StoryTile(
              story: Story(
                  nameOwner: "Oladimeji Od",
                  ownerPhoto:
                      "https://images.unsplash.com/photo-1542513217-0b0eedf7005d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=464&q=80",
                  content:
                      "https://images.unsplash.com/photo-1641229474548-5d1fb05ace3a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=381&q=80")),
          const SizedBox(
            width: 10,
          ),
          StoryTile(
              story: Story(
                  nameOwner: "Teny Oasis",
                  ownerPhoto:
                      "https://images.unsplash.com/photo-1488426862026-3ee34a7d66df?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
                  content:
                      "https://images.unsplash.com/photo-1582103287241-2762adba6c36?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80"))
        ],
      ),
    );
  }

  Widget _buildBody() {
    return Expanded(
        child: Container(
      padding: EdgeInsets.zero,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            children: [
              Container(
                height: 30,
                width: 280,
                decoration: const BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.all(Radius.circular(50))),
                child: Row(
                  children: [
                    Container(
                      height: 30,
                      width: 130,
                      decoration: const BoxDecoration(
                          color: Colors.black45,
                          borderRadius: BorderRadius.all(Radius.circular(50))),
                      child: const Center(child: Text("DMs")),
                    ),
                    Container(
                      height: 30,
                      width: 130,
                      decoration: const BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.all(Radius.circular(50))),
                      child: const Center(child: Text("Groups")),
                    )
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Expanded(
              child: ListView.builder(
            itemCount: messages.length,
            itemBuilder: (context, index) {
              return MessageTile(message: messages[index]);
            },
          ))
        ],
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    int _currentIndex = 2;
    var size = MediaQuery.of(context).size;
    final themeSer = Provider.of<ThemeSer>(context, listen: true);
    return Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              //backgroundColor: Colors.transparent,
              title: Text(widget.title),
              titleTextStyle: const TextStyle(fontSize: 24),
              centerTitle: true,
              elevation: 0,
              leading: IconButton(
                icon: Icon(
                  themeSer.darkTheme ? Icons.sunny : Icons.dark_mode,
                  size: 30,
                  color: Colors.white,
                ),
                onPressed: () {
                  themeSer.setDarkTheme = !themeSer.darkTheme;
                },
              ),
              actions: [
                IconButton(
                  icon: const Icon(
                    Icons.search,
                    size: 30,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
            SliverList(
                delegate: SliverChildListDelegate([
              SafeArea(
                  child: Container(
                      padding: const EdgeInsets.all(15),
                      height: size.height,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            _buildStories(),
                            const SizedBox(
                              height: 20,
                            ),
                            _buildBody()
                          ])))
            ]))
          ],
        ),
        bottomNavigationBar: FloatingNavbar(
            backgroundColor:
                themeSer.darkTheme ? Colors.grey.shade800 : Colors.teal,
            items: [
              FloatingNavbarItem(icon: Icons.home, title: 'Home'),
              FloatingNavbarItem(icon: Icons.phone, title: 'Phone'),
              FloatingNavbarItem(icon: Icons.add_rounded, title: 'New'),
              FloatingNavbarItem(icon: Icons.people, title: 'Contacts'),
              FloatingNavbarItem(icon: Icons.person, title: 'Me'),
            ],
            currentIndex: _currentIndex,
            onTap: (int index) {
              _currentIndex = index;
            }));
  }
}
