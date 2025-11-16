import 'dart:math';

import 'package:flutter/material.dart';
import 'package:week2_if5a/view/studentdetail.dart';

class StudentList extends StatelessWidget {
  const StudentList({super.key});

  @override
  Widget build(BuildContext context) {
    var studentID = Random();

    var studentId1 = studentID.nextInt(71);
    var studentId2 = studentID.nextInt(71); 
    var studentId3 = studentID.nextInt(71);


    return Scaffold(
      appBar: AppBar(
        title: Text("Student List"),
      ),
      body: Center(
       child: Row( 
        children: [
          ElevatedButton(
            onPressed: (){
              Navigator.push(
                context, 
                MaterialPageRoute(builder: (context) => Studentdetail(studentId1))
              );
            }, 
            child: Text("Student #$studentId1")
          ),
          ElevatedButton(
          onPressed: (){
            Navigator.push(
              context, 
              MaterialPageRoute(builder: (context) => Studentdetail(studentId2))
            );
          }, 
          child: Text("Student #$studentId2")
        ),  
        ElevatedButton( onPressed: (){
          Navigator.push(
              context, 
              MaterialPageRoute(builder: (context) => Studentdetail(studentId3))
            );
          }, 
          child: Text("Student #$studentId3")
        )
        ],
        )
      ),
    );
  }
}