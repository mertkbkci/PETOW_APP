import 'package:flutter/material.dart';

class AboutTheApp extends StatelessWidget {
  const AboutTheApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Uygulamanın Amacı',style: TextStyle(fontWeight: FontWeight.bold),),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        )
      ),
      body: const SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: EdgeInsets.only(top: 50, right: 20, left: 20, bottom: 70),
              child: Column(
                children: [
                  Text(
                    'Hoş Geldiniz!',
                    style: TextStyles.title,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Sevgi Dolu Bir Yuvada Buluşalım',
                    style: TextStyles.subtitle,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20),
                  Text(
                    '''Hayvan Sahiplendirme Uygulamamıza hoş geldiniz! Amacımız, sevgi dolu bir yuva arayan hayvanlarımızı, sahiplenmek isteyen sevgi dolu ailelerle buluşturmaktır. Siz, hayvan sahiplenme sürecini daha kolay ve anlamlı kılan bir köprüsünüz!''',
                    style: TextStyles.body,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Evcil Hayvan Sahiplenmek Neden Önemlidir?',
                    style: TextStyles.subtitle,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20),
                  Text(
                    '''Evcil hayvan sahiplenmek, sadece bir hayvanın yaşamını değiştirmekle kalmaz, aynı zamanda sahiplenenlerin de yaşamlarına anlam ve sevgi katar. Sahiplenilen hayvanlar, aileleriyle birlikte güvenli ve mutlu bir ortamda büyürken, onları da sonsuz bir sevgiyle ödüllendirirler. Sahiplendirme ile, bir dost kazanır ve hayatınıza yeni bir renk gelir.''',
                    style: TextStyles.body,
                    textAlign: TextAlign.center,
                    ),
                  SizedBox(height: 20),
                  Text(
                    'Hayvan Sahiplendirme Uygulamamız Nasıl Çalışır?',
                    style: TextStyles.subtitle,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20),
                  Text('''Uygulamamız sayesinde hayvan sahiplenme süreci daha da kolaylaşıyor! Siz, hayvanınızın profiline resim ve bilgiler ekleyerek onun hikayesini anlatıyorsunuz. Bu bilgiler, hayvanınıza uygun bir aile arayan kullanıcılara sunuluyor. Potansiyel sahiplenme aileleri, ilgilerini çeken hayvanlarla iletişime geçebiliyor ve onları daha yakından tanıma şansı buluyorlar.''',
                    style: TextStyles.body,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20),
                  Text('Yeni Bir Hayat Başlamak İçin Adım Atın!',
                    style: TextStyles.subtitle,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20),
                  Text('''Bir hayvan sahiplenmek, hayatınızı ve bir hayvanın hayatını değiştiren güçlü bir adımdır. Siz de bu gücü hissetmek ve sevgi dolu bir yuva sunmak için uygulamamıza katılın. Hayvan dostlarımıza umut olmak, onları sevgiyle sarıp sarmalamak için uygulamamızda bir profil oluşturun ve sahiplendirme sürecine başlayın!''',
                    style: TextStyles.body,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20),
                  Text('Bir Hayvanı Mutlu Etmek İçin Harekete Geçin!',
                    style: TextStyles.subtitle,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20),
                  Text('''Hayvanlar, bize sevgi ve sadakatle bağlanan özel varlıklardır. Onların hayatlarına dokunmak ve onları mutlu etmek, kalplerimizi ısıtacak bir duygu verir. Siz de bir hayvanı mutlu etmek, onun en iyi dostu olmak için şimdi harekete geçin!''',
                    style: TextStyles.body,
                    textAlign: TextAlign.center,
                    )
      
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class TextStyles {
  static const TextStyle title = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle subtitle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle body = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.normal,
  );
}
