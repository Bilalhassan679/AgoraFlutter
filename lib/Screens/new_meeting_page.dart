import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NewMeetingPage extends StatefulWidget {
  const NewMeetingPage({Key? key}) : super(key: key);

  @override
  _NewMeetingPageState createState() => _NewMeetingPageState();
}

class _NewMeetingPageState extends State<NewMeetingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          leading: IconButton(
            onPressed: () {
              Get.back;
            },
            icon: Icon(
              Icons.adaptive.arrow_back,
              color: Colors.black,
            ),
          )),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
              child: Image.network(
            'https://user-images.githubusercontent.com/67534990/127776450-6c7a9470-d4e2-4780-ab10-143f5f86a26e.png',
            fit: BoxFit.cover,
            height: 110,
          )),
          const SizedBox(height: 10),
          const Center(
              child: Text(
            'Your Meeting is ready',
            style: TextStyle(fontWeight: FontWeight.bold),
          )),
          const SizedBox(height: 10),
           Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 1,
                color:Colors.grey[400],
                shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)) ,
                child: const ListTile(
                  leading: Icon(Icons.link),
                  title: SelectableText('asd-skt-gss'),
                  trailing: Icon(Icons.copy),
                ),
              ),
            ),
          ),
          Center(
              child: ElevatedButton.icon(
            onPressed: () {},
            icon:  const Icon(Icons.keyboard_arrow_down, color: Colors.white),
            label: const Text(
              "Share invite",
              style: TextStyle(color: Colors.white),
            ),
            style: ElevatedButton.styleFrom(
                primary: Colors.indigo,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25))),
          )),
          Center(
              child: ElevatedButton.icon(
            onPressed: () {},
            icon: const Icon(
              Icons.video_call,
              color: Colors.indigo,
            ),
            label: const Text(
              "Start Call",
              style: TextStyle(color: Colors.indigo),
            ),
            style: ElevatedButton.styleFrom(
                primary: Colors.white,
                side: const BorderSide(color: Colors.indigo),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25))),
          ))
        ],
      ),
    );
  }
}
