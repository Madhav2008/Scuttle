// import 'package:flutter/material.dart';
// import 'package:scuttle/utils/colors.dart';
//
// class SettingsScreen extends StatelessWidget {
//   const SettingsScreen({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: mobileBackgroundColor,
//         title: const Text(
//           'Settings',
//           style: TextStyle(
//             fontWeight: FontWeight.bold,
//             letterSpacing: 1.5,
//             fontSize: 20,
//           ),
//         ),
//         leading: IconButton(
//           icon: const Icon(
//             Icons.arrow_back_ios,
//             color: primaryColor,
//           ),
//           onPressed: () {
//             Navigator.pop(context);
//           },
//         ),
//         centerTitle: false,
//       ),
//       body: const SingleChildScrollView(
//         child: Column(
//           children: [],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import 'package:rating_dialog/rating_dialog.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        backgroundColor: mobileBackgroundColor,
        title: const Text(
          'Settings & privacy',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            letterSpacing: 1.5,
            fontSize: 20,
          ),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: primaryColor,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(
                top: 15,
                left: 20,
              ),
              child: Text(
                'Account',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.person_outline,
                color: Colors.grey[500],
                size: 22,
              ),
              title: const Text(
                'Manage my account',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios_outlined,
                size: 15,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ListTile(
              leading: Icon(
                Icons.lock_outline,
                color: Colors.grey[500],
                size: 22,
              ),
              title: const Text(
                'Privacy and safety',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios_outlined,
                size: 15,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.video_camera,
                color: Colors.grey[500],
                size: 22,
              ),
              title: const Text(
                'Content preferences',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios_outlined,
                size: 15,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ListTile(
              onTap: () {
                // showDialog(
                //   context: context,
                //   builder: (BuildContext context) => _theme(context),
                // );
              },
              leading: Icon(
                Icons.account_balance_wallet_outlined,
                color: Colors.grey[500],
                size: 22,
              ),
              title: const Text(
                'Balance',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios_outlined,
                size: 15,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ListTile(
              onTap: () {
                // showDialog(
                //   context: context,
                //   builder: (BuildContext context) => _theme(context),
                // );
              },
              leading: Icon(
                Icons.screen_share_outlined,
                color: Colors.grey[500],
                size: 22,
              ),
              title: const Text(
                'Share profile',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios_outlined,
                size: 15,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ListTile(
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (builder) => MikCode(),
                //   ),
                // );
              },
              leading: Icon(
                Icons.qr_code,
                color: Colors.grey[500],
                size: 22,
              ),
              title: const Text(
                'MikCode',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios_outlined,
                size: 15,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              child: Divider(),
            ),
            const Padding(
              padding: EdgeInsets.only(
                top: 15,
                left: 20,
              ),
              child: Text(
                'General',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
            ),
            ListTile(
              onTap: () {
                // showDialog(
                //   context: context,
                //   builder: (BuildContext context) => _theme(context),
                // );
              },
              leading: Icon(
                Icons.notifications_none_outlined,
                color: Colors.grey[500],
                size: 22,
              ),
              title: const Text(
                'Push notifications',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios_outlined,
                size: 15,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ListTile(
              onTap: () {
                // showDialog(
                //   context: context,
                //   builder: (BuildContext context) => _theme(context),
                // );
              },
              leading: Icon(
                Icons.abc,
                color: Colors.grey[500],
                size: 22,
              ),
              title: const Text(
                'Language',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios_outlined,
                size: 15,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ListTile(
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (builder) => const ChangeTheme(),
                //   ),
                // );
              },
              leading: Icon(
                Icons.dark_mode_outlined,
                color: Colors.grey[500],
                size: 22,
              ),
              title: const Text(
                'Theme',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios_outlined,
                size: 15,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const SizedBox(
              height: 10,
            ),
            ListTile(
              onTap: () {
                // showDialog(
                //   context: context,
                //   builder: (BuildContext context) => _theme(context),
                // );
              },
              leading: Icon(
                CupertinoIcons.umbrella,
                color: Colors.grey[500],
                size: 22,
              ),
              title: const Text(
                'Digital Wellbeing',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios_outlined,
                size: 15,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ListTile(
              onTap: () {
                // showDialog(
                //   context: context,
                //   builder: (BuildContext context) => _theme(context),
                // );
              },
              leading: Icon(
                Icons.accessibility,
                color: Colors.grey[500],
                size: 22,
              ),
              title: const Text(
                'Accessibility',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios_outlined,
                size: 15,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ListTile(
              onTap: () {
                // showDialog(
                //   context: context,
                //   builder: (BuildContext context) => _theme(context),
                // );
              },
              leading: Icon(
                Icons.water_drop_outlined,
                color: Colors.grey[500],
                size: 22,
              ),
              title: const Text(
                'Data Saver',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios_outlined,
                size: 15,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              child: Divider(),
            ),
            const Padding(
              padding: EdgeInsets.only(
                top: 15,
                left: 20,
              ),
              child: Text(
                'SUPPORT',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
            ),
            ListTile(
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (builder) => NeedHelp(),
                //   ),
                // );
              },
              leading: Icon(
                CupertinoIcons.pencil_ellipsis_rectangle,
                color: Colors.grey[500],
                size: 22,
              ),
              title: const Text(
                'Report a problem',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios_outlined,
                size: 15,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ListTile(
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (builder) => NeedHelp(),
                //   ),
                // );
              },
              leading: Icon(
                CupertinoIcons.question_circle,
                color: Colors.grey[500],
                size: 22,
              ),
              title: const Text(
                'Help Center',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios_outlined,
                size: 15,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }

  void _showRatingAppDialog() {
  //   final ratingDialog = RatingDialog(
  //     title: const Text(
  //       'Rate Us ⭐',
  //       textAlign: TextAlign.center,
  //     ),
  //     message: const Text(
  //       'Tell others what you think?',
  //       textAlign: TextAlign.center,
  //     ),
  //     image: Image.asset(
  //       "assets/images/3D/banner_m.png",
  //       height: 100,
  //     ),
  //     starSize: 35,
  //     onSubmitted: (response) {
  //       print(
  //         'rating: ${response.rating}, '
  //             'comment: ${response.comment}',
  //       );
  //
  //       if (response.rating < 3.0) {
  //         print('response.rating: ${response.rating}');
  //       } else {
  //         Container();
  //       }
  //     },
  //     submitButtonText: 'Submit',
  //     submitButtonTextStyle: const TextStyle(
  //       fontSize: 18,
  //       fontWeight: FontWeight.bold,
  //     ),
  //   );
  //
  //   showDialog(
  //     context: context,
  //     barrierDismissible: true,
  //     builder: (context) => ratingDialog,
  //   );
  // }
}
//
// Widget _theme(BuildContext context) {
//   if (Provider.of<ThemeProvider>(context).themeMode == ThemeMode.dark) {
//     "Dark Mode";
//   } else {
//     "Light Mode";
//   }
//
//   final mode = Provider.of<ThemeProvider>(context).themeMode == ThemeMode.dark
//       ? "Dark Mode"
//       : "Light Mode";
//
//   final icon = Provider.of<ThemeProvider>(context).themeMode == ThemeMode.dark
//       ? Icons.dark_mode_rounded
//       : Icons.sunny;
//
//   return AlertDialog(
//     title: const Text('Theme'),
//     content: Container(
//       width: double.maxFinite,
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           const SizedBox(
//             width: 15,
//           ),
//           Icon(
//             icon,
//             size: 30,
//           ),
//           const SizedBox(
//             width: 15,
//           ),
//           Text(
//             mode,
//             style: const TextStyle(
//               fontSize: 16,
//             ),
//           ),
//           const SizedBox(
//             width: 15,
//           ),
//           ChangeThemeButtonWidget(),
//         ],
//       ),
//     ),
//   );
}
