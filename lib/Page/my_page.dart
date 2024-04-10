// ignore_for_file: prefer_const_constructors


import 'package:flutter/material.dart';

class MyPage extends StatefulWidget {
  const MyPage({super.key});

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {

  final images = [
      'https://s.rbbtoday.com/imgs/p/hDN4m_UJPEFczM0wl2KIHdtO9kFAQ0P9REdG/510534.jpg?vmode=default',
      'https://t3design.co.jp/data/blog/130/611dffc01122a.png',
      'https://girlydrop.com/wp-content/uploads/2023/04/IMG_6334_jpg.jpg',
  ];

  @override
  Widget build(BuildContext context) {

    var list = ["0","1","2","3","4","5","6","7","8","9"];
    
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'intsagram',
          ),
        ),
      ),
      
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.network(
                    IconUrl.iconUrl,
                    width: 100,
                    height: 60,
                  ),
                  const Spacer(),
                  const Column(
                    children: [
                      Text('投稿'),
                      Text('7000'),
                    ],
                  ),
                  const SizedBox(width: 20,),
                  const Column(
                    children: [
                      Text('フォロワー'),
                      Text('70000'),
                    ],
                  ),
                  const SizedBox(width: 20,),
                  const Column(
                    children: [
                      Text('フォロー'),
                      Text('0'),
                    ],
                  ),
                ],
              ),
            ),

            Row(
              children: [
                OutlinedButton(
                  onPressed: (){},
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),//角の丸み
                    ),
                  ),
                  child: Text('フォロー中'),
                ),
                OutlinedButton(
                  onPressed: (){},
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),//角の丸み
                    ),
                  ),
                  child: Text('メッセージ'),
                ),
                OutlinedButton(
                  onPressed: (){},
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),//角の丸み
                    ),
                  ),
                  child: Icon(Icons.expand_more),
                ),
              ],
            ),
            
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: list.map((item) => StoriesArchive()).toList(),
              ),
            ),

            GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 3,
              children: images.map((String imageUrl){
                return instagramPostImage(imageUrl: imageUrl,);
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}

class StoriesArchive extends StatelessWidget {
  const StoriesArchive({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        CircleAvatar(
          backgroundImage: NetworkImage(
            'https://girlydrop.com/wp-content/uploads/2023/04/IMG_6334_jpg.jpg',
          ),
          radius: 30,
        ),
        Text('桜'),
      ],
    );
  }
}

class instagramPostImage extends StatelessWidget {
  const instagramPostImage({super.key, required this.imageUrl,});

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Image.network(
      fit: BoxFit.cover,
      imageUrl,
    );
  }
}

class IconUrl {
  static String iconUrl = 'https://spirits-ltd.com/media/wp-content/uploads/2023/03/4.png';
}