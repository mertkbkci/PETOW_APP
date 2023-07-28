import 'package:flutter/material.dart';

class DescriptionScreen extends StatefulWidget {
  const DescriptionScreen({super.key});

  @override
  State<DescriptionScreen> createState() => _DescriptionScreenState();
}

class _DescriptionScreenState extends State<DescriptionScreen> {
  final int itemCount = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Bildirimler'),
        centerTitle: false,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(Icons.favorite),
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: itemCount,
            itemBuilder: (context, index) {
              return const Padding(
                padding: EdgeInsets.all(8.0),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage:
                        NetworkImage('https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg'),
                  ),
                  title: Text('Kullanıcı Adı'),
                  subtitle: Text('Bildirim içeriği'),
                  trailing: Icon(Icons.description_outlined),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
