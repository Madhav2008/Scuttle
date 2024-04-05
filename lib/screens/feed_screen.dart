import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scuttle/utils/colors.dart';
import 'package:scuttle/utils/global_variable.dart';
import 'package:scuttle/widgets/post_card.dart';

class FeedScreen extends StatefulWidget {
  const FeedScreen({Key? key}) : super(key: key);

  @override
  State<FeedScreen> createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor:
          width > webScreenSize ? webBackgroundColor : mobileBackgroundColor,
      appBar: width > webScreenSize
          ? null
          : AppBar(
              backgroundColor: mobileBackgroundColor,
              centerTitle: false,
              automaticallyImplyLeading: false,
              // toolbarHeight: 150,
              // shape: const RoundedRectangleBorder(
              //   borderRadius: BorderRadius.only(
              //     bottomRight: Radius.circular(25),
              //     bottomLeft: Radius.circular(25),
              //   ),
              // ),
              // flexibleSpace: Row(
              //   children: [
              //     CircleAvatar(
              //       radius: 20,
              //       child: Image.network('https://avatars.githubusercontent.com/u/72864817?v=4'),
              //     ),
              //   ],
              // ),
              title: Container(
                width: 115,
                height: 55,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      'assets/ic_white.png',
                    ),
                  ),
                ),
              ),
              actions: [
                IconButton(
                  icon: const Icon(
                    CupertinoIcons.plus_app,
                    size: 30,
                    color: primaryColor,
                  ),
                  onPressed: () {},
                ),
                const SizedBox(
                  width: 10,
                ),
                IconButton(
                  icon: const Icon(
                    CupertinoIcons.heart,
                    color: primaryColor,
                    size: 30,
                  ),
                  onPressed: () {},
                ),
                const SizedBox(
                  width: 5,
                ),
                IconButton(
                  icon: const Icon(
                    CupertinoIcons.bubble_left_bubble_right,
                    size: 30,
                    color: primaryColor,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection('posts').snapshots(),
        builder: (context,
            AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: Image.asset(
                'assets/load.gif',
                width: 200,
                height: 200,
              ),
            );
          }
          return snapshot.data!.docs.isEmpty
              ? Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/load.gif',
                        width: 200,
                        height: 200,
                      ),
                      const Text(
                        'No Posts yet!!',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                        ),
                      ),
                    ],
                  ),
                )
              : ListView.builder(
                  itemCount: snapshot.data!.docs.length,
                  itemBuilder: (ctx, index) => Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: width > webScreenSize ? width * 0.3 : 0,
                      vertical: width > webScreenSize ? 15 : 0,
                    ),
                    child: PostCard(
                      snap: snapshot.data!.docs[index].data(),
                    ),
                  ),
                );
        },
      ),
    );
  }
}
