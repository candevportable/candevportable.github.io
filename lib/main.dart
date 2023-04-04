import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/foundation.dart';

import '/mobile_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final isWebMobile = kIsWeb &&
      (defaultTargetPlatform == TargetPlatform.iOS ||
          defaultTargetPlatform == TargetPlatform.android);
  await SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp],
  );
  if (isWebMobile || Platform.isAndroid || Platform.isIOS){
    runApp(MobileApp());
  }
}


