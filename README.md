# BVN_VEERIFICATION

A new Flutter package for verifying BVN.




## Using


To use the package  just call a single functions that returns a map of server response. 


```dart
import 'package:Raven_BVN_VERF/raven_bvn_verifcation.dart';


//and call and await the function to return server response in Map 
                
                
               try {
                    value = await RavenVer.bvnVerifcation(
                      appToken: "ABCDEFGHIJKLMNOPQRSTUVWXYZ",
                      context: context,
                      authToken: "ZYXWVUTSRQPOMNLKJIHGFEDCBA",
                      bvn: "1000000001",
                      assetLogo: "assets/raven_logo_white.png",
                    );
                  } catch (ex) {
                    print(ex.toString());
                  }

 
```


## IOS Requirements

update your ios/Runner/info.plist

```
<key>NSCameraUsageDescription</key>
<string>Allow Camera Permission</string>
<key>NSPhotoLibraryUsageDescription</key>
<string>Alllow photo library to store your captured image</string>


```

and ios/Podfile to

```
platform :ios, '10.0'

and run the command 'pod install'

```

 


## Example


```dart
// ignore_for_file: avoid_print
// ignore_for_file: avoid_print
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
                    appToken: "ABCDEFGHIJKLMNOPQRSTUVWXYZ",
                    context: context,
                    authToken: "ZYXWVUTSRQPOMNLKJIHGFEDCBA",
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


```

