import 'package:flutter/material.dart';
import 'package:instagram/Page/my_page.dart';

class FeedPage extends StatefulWidget {
  const FeedPage({super.key});

  @override
  State<FeedPage> createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  
  final postimages = [
    'https://s.rbbtoday.com/imgs/p/hDN4m_UJPEFczM0wl2KIHdtO9kFAQ0P9REdG/510534.jpg?vmode=default',
    'https://t3design.co.jp/data/blog/130/611dffc01122a.png',
    'https://girlydrop.com/wp-content/uploads/2023/04/IMG_6334_jpg.jpg',
  ];

  var list = ["0","1","2","3","4","5","6","7","8","9"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Column(
          children: [
            Text(
              'INSTAGRAM',
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey,
              ),
            ),
            Text(
              '投稿',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ],
        ),
        shape: const Border(
          bottom: BorderSide(
            color: Colors.grey,
            width: 0.5,
          ),
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                      IconUrl.iconUrl,
                    ),
                  ),
                ),
                const Column(
                  children: [
                    Text(
                      'instagram',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'サンディエゴ',
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(Icons.more_horiz),
                ),
              ],
            ),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,

              child: Row(
                children: postimages.map((String postimage){
                return PostImage(
                  postimage: postimage,
                  width: 450,
                  height: 450,
                );
              }).toList(),
              ),
            ),

            const Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(Icons.favorite_outline, size: 30,),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(Icons.chat_bubble_outline, size: 30,),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(Icons.send_outlined, size: 30,),
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(Icons.bookmark, size: 30,),
                    ),
                  ],
                ),

                Text('「いいね」7億件'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class PostImage extends StatelessWidget {
  const PostImage({super.key, required this.postimage, this.width = 100,
    this.height=100,});

  final String postimage;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: const EdgeInsets.all(8),
      width: width,
      height: height,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(postimage),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }
}