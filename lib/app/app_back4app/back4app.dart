import 'package:flutter/material.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

class Back4app{
  static Future<void> initialize() async{
    WidgetsFlutterBinding.ensureInitialized();

  final keyApplicationId = "xiEEGdMN0wDFeXzEYS2yi8pllsaNYC0QkJB6og7Y";
  final keyClientKey = "tbBsDkpAmupFbujOirdU148RYZ1kAhyu7FZrbO3E";
  final keyParseServerUrl = "https://parseapi.back4app.com";

  await Parse().initialize(keyApplicationId, keyParseServerUrl,
      clientKey: keyClientKey, autoSendSessionId: true);

  }
}