import 'package:flutter/material.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';

class CallPage extends StatelessWidget {
  const CallPage(
      {Key? key,
      required this.callID,
      required this.userID,
      required this.username})
      : super(key: key);
  final String callID;
  final String userID;
  final String username;

  @override
  Widget build(BuildContext context) {
    return ZegoUIKitPrebuiltCall(
      appID:
          976658859, // Fill in the appID that you get from ZEGOCLOUD Admin Console.
      appSign:
          "312b475703f43d9ac066d3bdffbd740c3789f554e9ea43dbd4c18edfcd498cd0", // Fill in the appSign that you get from ZEGOCLOUD Admin Console.
      userID: userID,
      userName: username,
      callID: callID,
      // You can also use groupVideo/groupVoice/oneOnOneVoice to make more types of calls.
      config: ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall(),
        // ..onOnlySelfInRoom 
       
    );
  }
}
