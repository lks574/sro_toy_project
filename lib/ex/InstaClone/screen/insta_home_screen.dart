import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InstaHomeScreen extends StatelessWidget {
  const InstaHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          InstaStoryArea(),
          InstaFeedList(),
        ],
      ),
    );
  }
}

class InstaStoryArea extends StatelessWidget {
  const InstaStoryArea({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
          children: List.generate(
              10, (index) => InstaUserStory(userName: 'user $index'))),
    );
  }
}

class InstaUserStory extends StatelessWidget {
  final String userName;

  const InstaUserStory({required this.userName, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
      child: Column(
        children: [
          Container(
            width: 80,
            height: 80,
            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
            decoration: BoxDecoration(
                color: Colors.blue.shade300,
                borderRadius: BorderRadius.circular(40)),
          ),
          Text(userName),
        ],
      ),
    );
  }
}

class InstaFeedData {
  final String userName;
  final int likeCount;
  final String content;

  InstaFeedData({
    required this.userName,
    required this.likeCount,
    required this.content,
  });
}

final instaFeedDataList = [
  InstaFeedData(
      userName: 'user1',
      likeCount: 50,
      content:
          '123123123123 123ladkjhfalksdjfhaskdfjh akdsfjahdsklfjahsdlkfad'),
  InstaFeedData(userName: 'user2', likeCount: 10, content: '오늘 점심은 맛있다.'),
  InstaFeedData(userName: 'user3', likeCount: 0, content: 'zxczxczxc'),
  InstaFeedData(userName: 'user4', likeCount: 1, content: '오늘 저녁은 맛있다.'),
  InstaFeedData(userName: 'user5', likeCount: 10, content: 'ㅁㄴㅇㅁㄴㅇ'),
  InstaFeedData(userName: 'user6', likeCount: 100, content: '오늘 점심은 맛있다.'),
  InstaFeedData(userName: 'user7', likeCount: 22, content: 'ㅂㅂㅂㅂㅂㅂ'),
  InstaFeedData(userName: 'user8', likeCount: 23, content: '123123123'),
  InstaFeedData(userName: 'user9', likeCount: 30, content: '1111111'),
];

class InstaFeedList extends StatelessWidget {
  const InstaFeedList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: instaFeedDataList.length,
      itemBuilder: (context, index) =>
          InstaFeedItem(feedData: instaFeedDataList[index]),
    );
  }
}

class InstaFeedItem extends StatelessWidget {
  final InstaFeedData feedData;

  const InstaFeedItem({
    required this.feedData,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 4,
            horizontal: 12,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blue.shade300,
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(feedData.userName),
                ],
              ),
              const Icon(Icons.more_vert),
            ],
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Container(
          width: double.infinity,
          height: 280,
          color: Colors.indigo.shade300,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 4,
            horizontal: 12,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.favorite_outline),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(CupertinoIcons.chat_bubble),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(CupertinoIcons.paperplane),
                  ),
                ],
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(CupertinoIcons.bookmark),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
          ),
          child: Text(
            '좋아요 ${feedData.likeCount}개',
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 4,
          ),
          child: RichText(
              text: TextSpan(
            children: [
              TextSpan(
                text: feedData.userName,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              TextSpan(
                text: feedData.content,
              ),
            ],
            style: const TextStyle(color: Colors.black),
          )),
        ),
        const SizedBox(
          height: 8,
        ),
      ],
    );
  }
}
