import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Feed extends StatefulWidget {
  final String imgUrl;
  final String info;
  const Feed({
    super.key,
    required this.imgUrl,
    required this.info,
  });

  @override
  State<Feed> createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  // 하트 클릭 여부 변수
  bool isLike = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // 이미지
        Image.network(
          widget.imgUrl,
          height: 400,
          width: double.infinity,
          fit: BoxFit.cover,
        ),

        // 아이콘 목록
        Row(
          children: [
            // 하트 아이콘
            IconButton(
              onPressed: () {
                setState(() {
                  isLike = !isLike;
                });
              },
              icon: Icon(
                CupertinoIcons.heart,
                color: isLike ? Colors.pink : Colors.black,
              ),
            ),

            // 댓글 아이콘
            IconButton(
              onPressed: () {},
              icon: const Icon(
                CupertinoIcons.chat_bubble,
                color: Colors.black,
              ),
            ),

            const Spacer(),

            // 북마크 아이콘
            IconButton(
              onPressed: () {},
              icon: const Icon(
                CupertinoIcons.bookmark,
                color: Colors.black,
              ),
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.all(8),
          child: Text(
            "2 likes",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.all(8),
          child: Text(
            widget.info,
            style: const TextStyle(
              fontSize: 13.5,
            ),
          ),
        ),

        const Padding(
          padding: EdgeInsets.all(8),
          child: Text(
            "FEBURARY 6",
            style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
      ],
    );
  }
}
