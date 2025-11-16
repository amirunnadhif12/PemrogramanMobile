import 'package:flutter/material.dart';

class Studentdetail extends StatelessWidget {
  final studentId;
  const Studentdetail(this.studentId, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Student Detail"),
      ),
      body: Center(
        child: Column(
          children: [
           Image.network("https://i.pravatar.cc/300?img=$studentId"),
            Text("Detail of Student #$studentId"),
          ],
        ),
      ),
    );
  }
}
