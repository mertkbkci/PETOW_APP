import 'package:flutter/material.dart';
import 'package:petow_app/screens/login_screen.dart';
import 'package:petow_app/screens/profile_setting.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int ilanlar = 0;
  int currentIndex = 0;
  int takipci = 0;
  int takip = 0;

  final PageController _pageController = PageController();
  changePage(int index) {
    currentIndex = index;
    _pageController.jumpToPage(
      currentIndex,
      // duration: const Duration(milliseconds: 400),
      // curve: Curves.bounceInOut,
    );

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
      fontSize: 20,
      color: Colors.black,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.bold,
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Kullanici_adi'),
        centerTitle: false,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {
              showModalBottomSheet(
                backgroundColor: const Color.fromARGB(255, 230, 161, 242),
                context: context,
                builder: (context) => SizedBox(
                  height: 200,
                  child: Column(
                    children: [
                      ListTile(
                        leading: const Icon(Icons.settings),
                        title: const Text('Ayarlar'),
                        onTap: () {
                          
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.bookmark_border_outlined),
                        title: const Text('Kaydedildi'),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: const Icon(
                          Icons.logout,
                          color: Colors.red,
                        ),
                        title: const Text(
                          'Çıkış Yap',
                          style: TextStyle(color: Colors.red),
                        ),
                        onTap: () {
                          _showLogoutDialog(context);
                        },
                      ),
                    ],
                  ),
                ),
              );
            },
            icon: const Icon(Icons.menu_outlined),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 1,
                child: Container(
                  margin: const EdgeInsets.all(20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Column(
                        children: [
                          CircleAvatar(
                            radius: 75,
                            child: Icon(
                              Icons.account_circle_outlined,
                              size: 150,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 0, top: 25),
                            child: Text(
                              'Tam adı',
                              style: textStyle,
                              textAlign: TextAlign.start,
                            ),
                          ),
                          Text('Bio', textAlign: TextAlign.start),
                        ],
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Card(
                              elevation: 1,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Expanded(
                                    child: Column(
                                      children: [
                                        Text("$ilanlar"),
                                        const Text('İlanlar'),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [Text('$takipci'), const Text('Takipçi')],
                                    ),
                                  ),
                                  Expanded(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [Text('$takip'), const Text('Takip')],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: SizedBox(
                                height: 50,
                                width: 200,
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const ProfileSettingScreen(),
                                      ),
                                    );
                                  },
                                  child: const Text('Profili Düzenle'),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 2,
                ),
                itemBuilder: (context, index) => Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300),
                    image: const DecorationImage(
                      image: AssetImage('assets/png/ic_cat4.jpg'),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

Future<void> _showLogoutDialog(BuildContext context) async {
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: Colors.purple[100],
        title: const Text('Çıkış Yap'),
        content: const Text('Çıkmak istediğinize emin misiniz?'),
        actions: <Widget>[
          TextButton(
            child: const Text('Hayır'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          TextButton(
            child: const Text('Evet'),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginScreen(),
                  ),
                  );
            },
          ),
        ],
      );
    },
  );
}
