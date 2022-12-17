// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:raven_bvn_ver/raven_bvn_verifcation.dart';

//flutter pub pub publish --dry-run
void main() {
  runApp(const MaterialApp(home: RevenApp()));
}

class RevenApp extends StatefulWidget {
  const RevenApp({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return _RevenApp();
  }
}

class _RevenApp extends State<RevenApp> {
  Map<String, dynamic> value = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Text("Press The Button To Verify BVN"),
          ElevatedButton(
              onPressed: () async {
                try {
                  value = await RavenVer.bvnVerifcation(
                    userToken: "ABCDEFGHIJKLMNOPQRSTUVWXYZ",
                    context: context,
                    secretKey: "ZYXWVUTSRQPOMNLKJIHGFEDCBA",
                    bvn: "1000000001",
                    assetLogo: "assets/raven_logo_white.png",
                  );
                  print(value);
                } catch (ex) {
                  print(ex.toString());
                }
              },
              child: const Text("Start Verification"))
        ]),
      ),
    );
  }
}
