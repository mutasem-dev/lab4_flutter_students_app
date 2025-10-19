import 'package:flutter/material.dart';
import 'package:student_app/classes/student.dart';
// ignore: must_be_immutable
class StudentCard extends StatelessWidget {
  Student std;
  StudentCard({
    required this.std,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 100,
        color: Colors.blueGrey[100],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      Text(
                        'Name:',
                        style: TextStyle(fontSize: 25,color: Colors.blue),),                    
                      Text(
                        std.name,
                         style: TextStyle(fontSize: 25,color: Colors.black),),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'id:',
                         style: TextStyle(fontSize: 25,color: Colors.blue)),                    
                      Text(
                        std.id,
                        style: TextStyle(fontSize: 25,color: Colors.black),),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image.asset('images/person.jpg',height: 80,width: 80,),
            ),
          ],
        ),
      ),
    );
  }
}