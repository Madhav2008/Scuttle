import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:scuttle/screens/add_post_screen.dart';
import 'package:scuttle/screens/feed_screen.dart';
import 'package:scuttle/screens/profile_screen.dart';
import 'package:scuttle/screens/search_screen.dart';
import 'package:scuttle/screens/shop.dart';

const webScreenSize = 600;

List<Widget> homeScreenItems = [
  const FeedScreen(),
  const SearchScreen(),
  const AddPostScreen(),
  const ShopScreen(),
  ProfileScreen(
    uid: FirebaseAuth.instance.currentUser!.uid,
  ),
];
