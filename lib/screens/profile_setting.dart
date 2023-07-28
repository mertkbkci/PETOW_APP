import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
//import 'package:camera/camera.dart';

class ProfileSettingScreen extends StatefulWidget {
  const ProfileSettingScreen({super.key});

  @override
  State<ProfileSettingScreen> createState() => _ProfileSettingScreenState();
}

class _ProfileSettingScreenState extends State<ProfileSettingScreen> {
  String? _selectedGender;
 late File? _image;
  Future<void> _pickImageFromGallery() async {
   
    final imagePicker = ImagePicker();
    final pickedImage = await imagePicker.pickImage(source: ImageSource.gallery);

    if (pickedImage != null) {
      setState(() {
        _image = File(pickedImage.path);
      },
     );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil duzenle'),
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
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text(
              'Bitti',
              style: TextStyle(color: Colors.blue),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 0, top: 20),
              child: CircleAvatar(
                maxRadius: 75,
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.account_circle_outlined,
                    size: 135,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 0),
              child: TextButton(
                onPressed: () {
                  _pickImageFromGallery();
                },
                child: const Text(
                  'Profil Fotoğrafını Değiştir',
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ),
            const SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.only(top: 0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: TextFormField(
                      maxLength: 25,
                      decoration: _PetowInputDecorator().petowNickNameInput,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: TextFormField(
                      maxLength: 25,
                      decoration: _PetowInputDecorator().petowFullNameInput,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: TextFormField(
                      maxLength: 25,
                      decoration: _PetowInputDecorator().petowUrlInput,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: TextFormField(
                      maxLength: 25,
                      decoration: _PetowInputDecorator().petowBioInput,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: TextFormField(
                      maxLength: 25,
                      decoration: _PetowInputDecorator().petowPasswordInput,
                    ),
                  ),
                ],
              ),
            ),
            RadioListTile.adaptive(
              value: 'Erkek',
              title: const Text("Erkek"),
              groupValue: _selectedGender,
              onChanged: (value) {
                setState(() {
                  _selectedGender = value;
                });
              },
            ),
            RadioListTile.adaptive(
              value: 'Kadın',
              title: const Text("Kadın"),
              groupValue: _selectedGender,
              onChanged: (value) {
                setState(() {
                  _selectedGender = value;
                });
              },
            ),
            RadioListTile.adaptive(
              value: 'Diğer',
              title: const Text("Diğer"),
              groupValue: _selectedGender,
              onChanged: (value) {
                setState(() {
                  _selectedGender = value;
                });
              },
            ),
            RadioListTile.adaptive(
              value: 'Belirtmek istemiyorum',
              title: const Text("Belirtmek istemiyorum"),
              groupValue: _selectedGender,
              onChanged: (value) {
                setState(
                  () {
                    _selectedGender = value;
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<File?>('_image', _image));
  }
}

class _PetowInputDecorator {
  final petowNickNameInput = const InputDecoration(
    filled: false,
    prefixIcon: Icon(Icons.abc),
    border: OutlineInputBorder(),
    labelText: 'Kullanıcı adı',
  );

  final petowFullNameInput = const InputDecoration(
    focusColor: Colors.white38,
    prefix: Icon(Icons.abc),
    border: OutlineInputBorder(),
    labelText: 'Adı Soyadı',
  );

  final petowUrlInput = const InputDecoration(
    prefix: Icon(Icons.webhook_outlined),
    border: OutlineInputBorder(),
    labelText: AutofillHints.url,
  );
  final petowBioInput = const InputDecoration(
    prefix: Icon(Icons.description),
    border: OutlineInputBorder(),
    labelText: 'Biografi',
  );
  final petowPasswordInput = const InputDecoration(
    prefix: Icon(Icons.password_outlined),
    border: OutlineInputBorder(),
    labelText: 'Şifreni Değiştir',
  );
}
