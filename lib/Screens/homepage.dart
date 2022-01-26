import 'package:agoraflutter/Screens/join_with_code.dart';
import 'package:agoraflutter/Screens/new_meeting_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Video Conference"), centerTitle: true),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 20,),
          Center(
              child: ElevatedButton.icon(
            onPressed: () {Get.to(NewMeetingPage());},
            icon: Icon(Icons.add),
            label: Text('New Meeting'),
            style: ElevatedButton.styleFrom(
                fixedSize: Size(350, 30),
                primary: Colors.indigo,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusDirectional.circular(10))),
          )),
          Divider(height: 60,thickness: 2,indent: 30,endIndent: 30,),
          OutlinedButton.icon(onPressed: () {Get.to(const JoinWithCodeScreen());}, icon: Icon(Icons.margin), label: Text('Join with Code '),
          style: OutlinedButton.styleFrom(primary: Colors.indigo,side: BorderSide(color: Colors.indigo) ,fixedSize: Size(350, 60),shape: RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.circular(10))),
          ),
        SizedBox(height: 100),
        Image.network('https://www.agora.io/en/wp-content/uploads/2021/06/build-your-own-many-to-many-live-video-streaming-using-agora-web-sdk-ng-agora-featured.png',fit: BoxFit.cover,)
        ],
      ),
    );
  }
}
