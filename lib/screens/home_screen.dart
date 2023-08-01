import 'package:flutter/material.dart';

//import 'package:petow_app/layout/camera.dart';
import 'package:petow_app/screens/send_messages.dart';

import 'about_the_app.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int favorite = 0;
  bool isFavorited = false;
  late String name = 'kullanici_adi';
  late Image image = Image.asset('assets/png/ic_cat4.jpg', fit: BoxFit.cover);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Image.asset(
          'assets/png/ic_petow.png',
          fit: BoxFit.contain,
          height: kToolbarHeight,
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications_active, color: Colors.purple[900]),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AboutTheApp(),
                ),
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.send_outlined),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SendMessagesScreen(),
                ),
              );
            },
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  elevation: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(Icons.account_circle_outlined),
                          ),
                          Text(
                            name,
                            style: const TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: image,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('$name $favorite'),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            onPressed: () {
                              setState(
                                () {
                                  isFavorited = !isFavorited;
                                  if (isFavorited) {
                                    favorite += 1;
                                  } else {
                                    favorite -= 1;
                                  }
                                },
                              );
                            },
                            icon: Icon(
                              isFavorited ? Icons.favorite : Icons.favorite_border,
                              color: isFavorited ? Colors.red : null,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.comment_outlined),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15, right: 15),
                        child: TextField(
                          autofocus: false,
                          maxLength: 500,
                          decoration: _PetowCommentInputDecorator().inputCommentDecoration,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  elevation: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(Icons.account_circle_outlined),
                          ),
                          Text(
                            name,
                            style: const TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: image,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('$name $favorite'),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            onPressed: () {
                              setState(
                                () {
                                  isFavorited = !isFavorited;
                                  if (isFavorited) {
                                    favorite += 1;
                                  } else {
                                    favorite -= 1;
                                  }
                                },
                              );
                            },
                            icon: Icon(
                              isFavorited ? Icons.favorite : Icons.favorite_border,
                              color: isFavorited ? Colors.red : null,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.comment_outlined),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15, right: 15),
                        child: TextField(
                          autofocus: false,
                          maxLength: 500,
                          decoration: _PetowCommentInputDecorator().inputCommentDecoration,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  elevation: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(Icons.account_circle_outlined),
                          ),
                          Text(
                            name,
                            style: const TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: image,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('$name $favorite'),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            onPressed: () {
                              setState(
                                () {
                                  isFavorited = !isFavorited;
                                  if (isFavorited) {
                                    favorite += 1;
                                  } else {
                                    favorite -= 1;
                                  }
                                },
                              );
                            },
                            icon: Icon(
                              isFavorited ? Icons.favorite : Icons.favorite_border,
                              color: isFavorited ? Colors.red : null,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.comment_outlined),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15, right: 15),
                        child: TextField(
                          autofocus: false,
                          maxLength: 500,
                          decoration: _PetowCommentInputDecorator().inputCommentDecoration,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  elevation: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(Icons.account_circle_outlined),
                          ),
                          Text(
                            name,
                            style: const TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: image,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('$name $favorite'),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            onPressed: () {
                              setState(
                                () {
                                  isFavorited = !isFavorited;
                                  if (isFavorited) {
                                    favorite += 1;
                                  } else {
                                    favorite -= 1;
                                  }
                                },
                              );
                            },
                            icon: Icon(
                              isFavorited ? Icons.favorite : Icons.favorite_border,
                              color: isFavorited ? Colors.red : null,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.comment_outlined),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15, right: 15),
                        child: TextField(
                          autofocus: false,
                          maxLength: 500,
                          decoration: _PetowCommentInputDecorator().inputCommentDecoration,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  elevation: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(Icons.account_circle_outlined),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              name,
                              style: const TextStyle(fontSize: 20),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: image,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('$name $favorite'),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            onPressed: () {
                              setState(
                                () {
                                  isFavorited = !isFavorited;
                                  if (isFavorited) {
                                    favorite += 1;
                                  } else {
                                    favorite -= 1;
                                  }
                                },
                              );
                            },
                            icon: Icon(
                              isFavorited ? Icons.favorite : Icons.favorite_border,
                              color: isFavorited ? Colors.red : null,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.comment_outlined),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15, right: 15),
                        child: TextField(
                          autofocus: false,
                          maxLength: 500,
                          decoration: _PetowCommentInputDecorator().inputCommentDecoration,
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ProjectColor {
  static const textColor = Colors.deepPurple;
}

class _PetowCommentInputDecorator {
  final inputCommentDecoration =
      const InputDecoration(prefix: Icon(Icons.abc), border: OutlineInputBorder(), labelText: 'Yorum yaz');
}
