import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:videochat/utils.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';
import 'dart:math' as math;

final String localUserID = math.Random().nextInt(10000).toString();

class VideoCalling extends StatefulWidget {
  VideoCalling({super.key});
  @override
  State<VideoCalling> createState() => _VideoCallingState();
}

TextEditingController callingIds = TextEditingController();

class _VideoCallingState extends State<VideoCalling> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextFormField(
            controller: callingIds,
            decoration: InputDecoration(
                hintText: "Enter Call Id ", border: OutlineInputBorder()),
          ),
          SizedBox(
            height: 34,
          ),
          ElevatedButton(
            onPressed: () {
              Get.to(() => LiveCall(
                    callingId: callingIds.text.toString(),
                  ));
            },
            child: Text("Join Now"),
            style: ElevatedButton.styleFrom(
                fixedSize: Size(132, 12), backgroundColor: Colors.amber),
          )
        ],
      ),
    ));
  }
}

class LiveCall extends StatelessWidget {
  const LiveCall({super.key, required this.callingId});
  final String callingId;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: ZegoUIKitPrebuiltCall(
            appID: Utils.appId,
            callID: callingId,
            appSign: Utils.appSignIn,
            userID: localUserID,
            userName: 'user_$localUserID',
            config: ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall()));
  }
}
