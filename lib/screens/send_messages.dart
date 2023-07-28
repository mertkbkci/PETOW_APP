import 'package:flutter/material.dart';

import 'chat_screen.dart';



class SendMessagesScreen extends StatelessWidget {
  const SendMessagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text('kullanici_adi'),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.chevron_left_outlined)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                //border verir sarmalar
                child: ListTile(
                  title: const Text('kullanici_adi'),
                  dense: true,
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ChatScreen(),
                        ));
                  }, //tıklama şansını verir
                  subtitle: const Text('son mesaj'),
                  leading: const Icon(Icons.account_circle), //soluna bir şey koymak için
                  trailing: const Icon(Icons.chevron_right), //sağına bir şey koymak için
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: ListTile(
                  title: const Text('kullanici_adi'),
                  dense: true,
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ChatScreen(),
                        ));
                  },
                  subtitle: const Text('son mesaj'),
                  leading: const Icon(Icons.account_circle),
                  trailing: const Icon(Icons.chevron_right),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: ListTile(
                  title: const Text('kullanici_adi'),
                  dense: true,
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ChatScreen(),
                        ));
                  },
                  subtitle: const Text('son mesaj'),
                  leading: const Icon(Icons.account_circle),
                  trailing: const Icon(Icons.chevron_right),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: ListTile(
                  title: const Text('kullanici_adi'),
                  dense: true,
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ChatScreen(),
                        ));
                  },
                  subtitle: const Text('son mesaj'),
                  leading: const Icon(Icons.account_circle),
                  trailing: const Icon(Icons.chevron_right),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: ListTile(
                  title: const Text('kullanici_adi'),
                  dense: true,
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ChatScreen(),
                        ));
                  },
                  subtitle: const Text('son mesaj'),
                  leading: const Icon(Icons.account_circle),
                  trailing: const Icon(Icons.chevron_right),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: ListTile(
                  title: const Text('kullanici_adi'),
                  dense: true,
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ChatScreen(),
                        ));
                  },
                  subtitle: const Text('son mesaj'),
                  leading: const Icon(Icons.account_circle),
                  trailing: const Icon(Icons.chevron_right),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: ListTile(
                  title: const Text('kullanici_adi'),
                  dense: true,
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ChatScreen(),
                        ));
                  },
                  subtitle: const Text('son mesaj'),
                  leading: const Icon(Icons.account_circle),
                  trailing: const Icon(Icons.chevron_right),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: ListTile(
                  title: const Text('kullanici_adi'),
                  dense: true,
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ChatScreen(),
                        ));
                  },
                  subtitle: const Text('son mesaj'),
                  leading: const Icon(Icons.account_circle),
                  trailing: const Icon(Icons.chevron_right),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: ListTile(
                  title: const Text('kullanici_adi'),
                  dense: true,
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ChatScreen(),
                        ));
                  },
                  subtitle: const Text('son mesaj'),
                  leading: const Icon(Icons.account_circle),
                  trailing: const Icon(Icons.chevron_right),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: ListTile(
                  title: const Text('kullanici_adi'),
                  dense: true,
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ChatScreen(),
                        ));
                  },
                  subtitle: const Text('son mesaj'),
                  leading: const Icon(Icons.account_circle),
                  trailing: const Icon(Icons.chevron_right),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: ListTile(
                  title: const Text('kullanici_adi'),
                  dense: true,
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ChatScreen(),
                        ));
                  },
                  subtitle: const Text('son mesaj'),
                  leading: const Icon(Icons.account_circle),
                  trailing: const Icon(Icons.chevron_right),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
