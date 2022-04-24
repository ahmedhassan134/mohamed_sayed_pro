// import 'package:flutter/material.dart';
// import 'package:romio/models/obj/about_the_faculty.dart';
// import 'package:romio/view/widgets/custom_column_drawer.dart';
//
// class FacultyPage extends StatelessWidget {
//   static String id = 'faculty_page';
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.blue,
//       appBar: AppBar(
//         title: const Text(
//           'عن الكليه',
//           style: TextStyle(color: Colors.white),
//         ),
//       ),
//       body: Container(
//         margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
//         padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 10),
//         width: double.infinity,
//         height: MediaQuery.of(context).size.height * .9,
//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(16),
//         ),
//         child: ListView(
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: const [
//                 // Expanded(child: Image.asset('assets/images/bns.png')),
//                 CircleAvatar(
//                   radius: 30,
//                   backgroundImage: AssetImage('assets/images/bns.png'),
//                 ),
//                 SizedBox(
//                   width: 10,
//                 ),
//                 Expanded(
//                   child: Text(
//                     'كليه علوم ذوي الاحتياجات الخاصه جامعه بني سويف ',
//                     style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//                     textAlign: TextAlign.center,
//                   ),
//                 ),
//                 SizedBox(
//                   width: 10,
//                 ),
//                 CircleAvatar(
//                   radius: 30,
//                   backgroundImage: AssetImage('assets/images/bns2.jfif'),
//                 ),
//               ],
//             ),
//             const SizedBox(
//               height: 15,
//             ),
//             CustomColumnDrawer(
//                 img: 'assets/images/drawer/about_the_faculty/ali.jpg',
//                 text1: 'ا/د : علي محمد',
//                 text2: 'رئيس جامعه بني سويف'),
//             CustomColumnDrawer(
//                 img: 'assets/images/drawer/about_the_faculty/hazem.jpg',
//                 text1: 'ا/د : حازم سيف ',
//                 text2: 'عميد كليه علوم ذوي الاحتياجات '),
//             CustomColumnDrawer(
//                 img: 'assets/images/drawer/about_the_faculty/elroby.jpg',
//                 text1: 'ا/د : حمزه طه ',
//                 text2: 'وكيل الكليه للدراسات العليا '),
//           GridView.builder(
//             shrinkWrap: true,
//               physics: const NeverScrollableScrollPhysics(),
//
//               gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                   crossAxisCount: 2,
//                 mainAxisSpacing: 3,
//                 crossAxisSpacing: 4,
//                 childAspectRatio: 3/2
//
//               ), itemBuilder: (context ,index){
//               return Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   // Expanded(
//                   //   child:CircleAvatar(
//                   //     radius: 20,
//                   //     backgroundColor: Colors.deepPurple,
//                   //   )
//                   // //   ClipRRect(
//                   // //
//                   // //
//                   // //     child: Image.asset(facultyList[index].img),
//                   // //   borderRadius: BorderRadius.circular(16),
//                   // // ),
//                   // ),
//                   const CircleAvatar(
//                     radius: 20,
//                     backgroundColor: Colors.deepPurple,
//                   ),
//                   const SizedBox(height: 5,),
//                   Text(facultyList[index].text,style: const TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)
//
//                 ],
//               );
//           },
//           itemCount: facultyList.length,)
//
//           ],
//
//         ),
//       ),
//     );
//   }
// }
