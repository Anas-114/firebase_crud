// import 'package:flutter/material.dart';

// class Display extends StatelessWidget {
//   const Display({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return  Scaffold(
//        appBar: AppBar(
//         title: Text( 'display data'),
//         centerTitle: true,
//         backgroundColor: Colors.red.shade300,
//       )
      
//      , body:ListView.builder(
//                   shrinkWrap: true,
//                   physics: NeverScrollableScrollPhysics(),
//                   itemCount: value.datas.length,
//                   itemBuilder: (context, index) {
//                     final student = value.datas[index];
//                     return Card(
//                       child: ListTile(
//                         leading: CircleAvatar(
//                           backgroundImage: NetworkImage(student.imageUrl),
//                         ),
//                         title: Text(student.name),
//                         subtitle: Text(
//                           "Class: ${student.studentClass}, Age: ${student.age}",
//                         ),
//                         trailing: Row(
//                           mainAxisSize: MainAxisSize.min,
//                           children: [
//                             IconButton(
//                               icon: Icon(Icons.edit),
//                               onPressed: () {
//                                 value.loadToForm(student);

//                                 value.deleteStudent(student.id!);
//                               },
//                             ),
//                             IconButton(
//                               icon: Icon(Icons.delete),
//                               onPressed: () async {
//                                 await value.deleteStudent(student.id!);
//                                 ScaffoldMessenger.of(context).showSnackBar(
//                                   SnackBar(content: Text('Student deleted')),
//                                 );
//                               },
//                             ),
//                           ],
//                         ),
//                       ),
//                     );
//                   },
//                 )  ,
//     );
//   }
// }