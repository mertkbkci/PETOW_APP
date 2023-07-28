import 'package:flutter/material.dart';

import 'package:petow_app/utils/camera_utils.dart';

class ShareScreen extends StatefulWidget {
  const ShareScreen({super.key});

  @override
  State<ShareScreen> createState() => _ShareScreenState();
}

class _ShareScreenState extends State<ShareScreen> {
  int favorite = 0;
  bool isFavorited = false;
  String? name = 'kullanici_adi';
  late Image image = Image.asset('assets/png/ic_cat4.jpg', fit: BoxFit.cover);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('İlan Yükle'),
        leading: TextButton(
          onPressed: () {
            Navigator.pop(
              context,
            );
          },
          child: const Text(
            'İptal',
          ),
        ),
        actions: [TextButton(onPressed: () {}, child: const Text('Bitti'))],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
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
                            '$name',
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
                              setState(() {
                                isFavorited = !isFavorited;
                                if (isFavorited) {
                                  favorite += 1;
                                } else {
                                  favorite -= 1;
                                }
                              });
                            },
                            icon: Icon(isFavorited ? Icons.favorite : Icons.favorite_border,
                                color: isFavorited ? Colors.red : null),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.comment_outlined),
                          )
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 15, right: 15),
                        child: TextField(
                          maxLength: 500,
                          decoration: InputDecoration(
                            prefix: Icon(Icons.abc),
                            border: OutlineInputBorder(),
                            labelText: 'Sahiplendireceğin hayvan hakkında şeyler yaz',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 50),
              FloatingActionButton(
                onPressed: () async {
                  final result = await CameraUtils.showImageSelectBottomSheet(context);
                  if (result != null) {
                    setState(() {
                      image = Image.file(
                        result,
                        fit: BoxFit.cover,
                      );
                    });
                  }
                },
                child: const Icon(Icons.add_a_photo_outlined),
              ),
              
              
              
            ],
          ),
          
        ),
      ),
    );
  }
}
