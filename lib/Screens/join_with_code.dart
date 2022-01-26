import 'package:flutter/material.dart';
import 'package:get/get.dart';

class JoinWithCodeScreen extends StatefulWidget {
  const JoinWithCodeScreen({Key? key}) : super(key: key);

  @override
  _JoinWithCodeScreenState createState() => _JoinWithCodeScreenState();
}

class _JoinWithCodeScreenState extends State<JoinWithCodeScreen> {
  TextEditingController _controllerJoinCode = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
              onPressed: () {
                Get.back;
              },
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              ))),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
                child: Image.network(
                    'https://user-images.githubusercontent.com/67534990/127776450-6c7a9470-d4e2-4780-ab10-143f5f86a26e.png',
                    height: 150,
                    fit: BoxFit.cover)),
            SizedBox(height: 10),
            Center(
                child: Text('Enter meeting code below',
                    style: TextStyle(fontWeight: FontWeight.bold))),
            SizedBox(height: 10),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                    elevation: 2,
                    color: Colors.grey[400],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                    child: TextField(
                        controller: _controllerJoinCode,
                        decoration: InputDecoration(
                            hintText: "Example abc-gdf-gfe",
                            border: InputBorder.none),
                        textAlign: TextAlign.center))),
            Center(
                child: ElevatedButton(
              onPressed: () {},
              child: Text('Join'),
              style: ElevatedButton.styleFrom(primary: Colors.indigo),
            ))
          ],
        ),
      ),
    );
  }
}
