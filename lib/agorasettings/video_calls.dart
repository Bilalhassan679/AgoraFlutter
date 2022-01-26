import 'package:agora_uikit/agora_uikit.dart';
import 'package:flutter/material.dart';

class VideoCalls extends StatelessWidget {
   VideoCalls({Key? key}) : super(key: key);
  AgoraClient client=AgoraClient(agoraConnectionData: AgoraConnectionData(appId: '832bc958d399476c941d6457b25c4d5f',channelName: 'test',tempToken: '006832bc958d399476c941d6457b25c4d5fIACQkmppb1wpirfc6pxnvjl92bkE22FH6ORkQ/0g25o+xAx+f9gAAAAAEAD45Mp2IKnyYQEAAQAgqfJh'), enabledPermission: [Permission.microphone,Permission.camera]);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Stack(children:[AgoraVideoViewer(client: client,),AgoraVideoButtons(client: client)]),)
    );
  }
}
