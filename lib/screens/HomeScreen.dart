import 'package:bloc_training/screens/Products.dart';
import 'package:bloc_training/screens/Products2.dart';
import 'package:bloc_training/translations/locale_keys.g.dart';
import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // const CircularProgressIndicator(),
            Text(LocaleKeys.welcome_message.tr()),
            SizedBox(height: 20),
            TextButton(
              style: TextButton.styleFrom(
                primary: Colors.white,
                backgroundColor: Colors.blue[200],
              ),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Products()));
              },
              child: Text(LocaleKeys.products_name.tr()),
            ),
            TextButton(
              style: TextButton.styleFrom(
                primary: Colors.white,
                backgroundColor: Colors.blue[200],
              ),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Products2()));
              },
              child: Text(LocaleKeys.products_name.tr() + ' 2'),
            ),
          ],
        ),
      ),
    );
  }
}
