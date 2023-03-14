import 'package:flutter/material.dart';
import 'package:homzy1/auth.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:homzy1/req_model.dart';
import 'package:homzy1/screens/profile_screen.dart';
import 'package:provider/provider.dart';
import 'dart:io';
import 'package:homzy1/utils.dart';
import 'package:homzy1/screens/screen_page.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});


  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // File? image;
  // void selectImage() async {
  //   image = await pickImage(context);
  //   setState(() {});
  // }

  Widget categoriesConatiner({required String image , required String name}){
    return  Container(
      child: Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              child: Image.asset('assets/image1.png', height: 50, width: 50),
            ),
            SizedBox(height: 8),
            Padding(
              padding: EdgeInsets.all(0.5),
              child: Center(child:
              Text('Events',
                style:
                TextStyle(fontSize: 16,
                  color:
                  Color(0xFFc4c4e8),
                ),
              ),
              ),
            ),
          ],
        ),

      ),
    );
  }
  Widget categoriesConatiner2({required String image , required String name}){
    return  Column(
      children: [
        Container(
          margin: EdgeInsets.only(left: 20),
          height: 20,
          width: 20,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/small_services/pet.png'),),
            color: Colors.lightGreen,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(name,
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
          ),),
      ],
    );
  }
  Widget draweritem({required String name, required IconData icon}){
    return   ListTile(
      leading: Icon(
        icon,
        color: Colors.white,
      ),
      title: Text(
        name ,
        style: TextStyle(
            color: Colors.white,
            fontSize: 20),
      ),
    );
  }

  @override

  Widget build(BuildContext context) {
    final ap = Provider.of<AuthProvider>(context, listen: false);
    final name=(ap.userModel.name);
    final email=(ap.userModel.email);
    final bio=(ap.userModel.bio);
    final phone=(ap.userModel.phoneNumber);
    final pic=(ap.userModel.profilePic);
    final uid=(ap.userModel.uid);
    final date=(ap.userModel.createdAt);
    // final DatabaseReference databaseReference = FirebaseDatabase.instance.reference().child('messages');
    final t = (ap.userModel.name);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF189AB4),
        centerTitle: false,

        title: Text("Hello, $t",),
        actions: [
          GestureDetector(
            onTap: () {
              print("dlo");
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const Profile(),
                ),
              );
            },
            child: CircleAvatar(

              backgroundImage: NetworkImage(ap.userModel.profilePic),
              backgroundColor: Color(0xFF189AB4),
              radius: 50,
            ),
          )

        ],
      ), body: SafeArea(
      child: Container(
        child: Center(
          child: ListView(
            children: [
              SizedBox(
                height:  200,
                width: double.infinity,
                child:  Container(
                  child: Carousel(
                    dotColor: Colors.lightBlue,
                    dotBgColor: Colors.transparent,
                    dotSize: 9.0,
                    dotSpacing: 20.0,
                    dotPosition: DotPosition.bottomCenter,
                    images: [
                      InkWell(
                        onTap: () {
                          print("Click on the first image ");},
                        child: Image.asset('assets/images/1.jpeg' , fit: BoxFit.cover),
                      ),
                      InkWell(
                        onTap: (){
                          print("Click on the second image");
                        },
                        child: Image.asset('assets/images/2.jpeg' , fit: BoxFit.cover),
                      ),
                      InkWell(
                        onTap: (){
                          print("Click on the third image");
                        },
                        child: Image.asset('assets/images/4.jpeg' , fit: BoxFit.cover),
                      ),
                      InkWell(
                        onTap: (){
                          print("Click on the fourth image");
                        },
                        child: Image.asset('assets/images/6.jpeg' , fit: BoxFit.cover),
                      ),
                      InkWell(
                        onTap: (){
                          print("Click on the fiveth image");
                        },
                        child: Image.asset('assets/images/7.jpeg' , fit: BoxFit.cover),
                      ),

                    ],
                  ),
                ),
              ),

              SizedBox(
                height: 20,
              ),
              Container(
                child: Text(
                  '  Popular Services',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              SizedBox(
                height: 10,
              ),

              Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image: NetworkImage('https://content.jdmagicbox.com/comp/def_content/ac_repair_and_services/default-ac-repair-services-16.jpg'),
                              fit: BoxFit.contain,
                            ),
                          ),
                          width: 100,
                          height: 100,
                          // child: Image.asset('path_to_your_image'),
                        ),
                        //  SizedBox(height: 3),
                        Text(
                          'Ac Service',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            //   fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image: NetworkImage('https://content.jdmagicbox.com/comp/def_content/ac_repair_and_services/default-ac-repair-services-16.jpg'),
                              fit: BoxFit.contain,
                            ),
                          ),
                          width: 100,
                          height: 100,
                          // child: Image.asset('path_to_your_image'),
                        ),
                        //  SizedBox(height: 3),
                        Text(
                          'Ac Service',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            //   fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image: NetworkImage('https://content.jdmagicbox.com/comp/def_content/ac_repair_and_services/default-ac-repair-services-16.jpg'),
                              fit: BoxFit.contain,
                            ),
                          ),
                          width: 100,
                          height: 100,
                          // child: Image.asset('path_to_your_image'),
                        ),
                        //  SizedBox(height: 3),
                        Text(
                          'Ac Service',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            //   fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),


              SizedBox(
                height: 10,
              ),

              Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image: NetworkImage('https://content.jdmagicbox.com/comp/def_content/ac_repair_and_services/default-ac-repair-services-16.jpg'),
                              fit: BoxFit.contain,
                            ),
                          ),
                          width: 100,
                          height: 100,
                          // child: Image.asset('path_to_your_image'),
                        ),
                        //  SizedBox(height: 3),
                        Text(
                          'Ac Service',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            //   fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image: NetworkImage('https://content.jdmagicbox.com/comp/def_content/ac_repair_and_services/default-ac-repair-services-16.jpg'),
                              fit: BoxFit.contain,
                            ),
                          ),
                          width: 100,
                          height: 100,
                          // child: Image.asset('path_to_your_image'),
                        ),
                        //  SizedBox(height: 3),
                        Text(
                          'Ac Service',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            //   fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image: NetworkImage('https://content.jdmagicbox.com/comp/def_content/ac_repair_and_services/default-ac-repair-services-16.jpg'),
                              fit: BoxFit.contain,
                            ),
                          ),
                          width: 100,
                          height: 100,
                          // child: Image.asset('path_to_your_image'),
                        ),
                        //  SizedBox(height: 3),
                        Text(
                          'Ac Service',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            //   fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              // Column(
              //   children: [
              //     Container(
              //       child: Row(
              //         children: [
              //           Container(
              //             height: 200,
              //             width: 200,
              //             decoration: BoxDecoration(
              //               color: Colors.white,
              //             ),
              //             child: Column(
              //               children: [
              //                 Expanded(
              //                     child: Image.asset("assets/services/pet_services.webp"),
              //                 ),
              //               ],
              //             ),
              //           ),
              //         ],
              //       ),
              //     ),
              //   ],
              // ),
              //    Column(
              //
              //      children: [
              //        Row(
              //          children: [
              //            Padding(
              //              padding: EdgeInsets.all(10),
              //              child: Container(
              //              //  alignment: Alignment.topLeft,
              //              height: 100,
              //              width: 100,
              //              decoration: BoxDecoration(
              //                color: Colors.blue,
              //                borderRadius: BorderRadius.circular( 16),
              //              ),
              //              child: Image.asset('assets/small_images/actual_wb.png'),
              //          ),
              //            ),
              //            Padding(
              //              padding: EdgeInsets.all(10),
              //              child: Align(
              //                alignment: Alignment.topLeft,
              //                child: FittedBox(
              //                  fit: BoxFit.scaleDown,
              //                  child: Text(
              //                    "Pet Grooming",
              //                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              //                  ),
              //                ),
              //              ),
              //            ),
              //
              //            Container(
              //              //  alignment: Alignment.topLeft,
              //              height: 100,
              //              width: 100,
              //              decoration: BoxDecoration(
              //                color: Colors.blue,
              //                borderRadius: BorderRadius.circular( 16),
              //              ),
              //              child: Image.asset('assets/small_images/actual_wb.png'),
              //            ),
              //            Padding(
              //              padding: EdgeInsets.all(10),
              //              child: Align(
              //                alignment: Alignment.topLeft,
              //                child: FittedBox(
              //                  fit: BoxFit.scaleDown,
              //                  child: Text(
              //                    "Pet Grooming",
              //                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              //                  ),
              //                ),
              //              ),
              //            ),
              //         ],
              //        ),
              //
              //
              // // Column(
              // //   children: [
              // //     Padding(
              // //       padding: EdgeInsets.all(10),
              // //       child: Container(
              // //         //  alignment: Alignment.topLeft,
              // //         height: 100,
              // //         width: 100,
              // //         decoration: BoxDecoration(
              // //           color: Colors.blue,
              // //           borderRadius: BorderRadius.circular( 16),
              // //         ),
              // //         child: Image.asset('assets/small_images/actual_wb.png'),
              // //       ),
              // //     ),
              // //     Padding(
              // //       padding: EdgeInsets.all(10),
              // //       child: Align(
              // //         alignment: Alignment.topLeft,
              // //         child: FittedBox(
              // //           fit: BoxFit.scaleDown,
              // //           child: Text(
              // //             "Pet Grooming",
              // //             style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              // //           ),
              // //         ),
              // //       ),
              // //     ),
              // //   ],
              // // ),
              //
              //
              //
              // // Column(
              // //   children: [
              // //     Padding(
              // //       padding: EdgeInsets.all(10),
              // //       child: Container(
              // //         //  alignment: Alignment.topLeft,
              // //         height: 100,
              // //         width: 100,
              // //         decoration: BoxDecoration(
              // //           color: Colors.blue,
              // //           borderRadius: BorderRadius.circular( 16),
              // //         ),
              // //         child: Image.asset('assets/small_images/actual_wb.png'),
              // //       ),
              // //     ),
              // //     Padding(
              // //       padding: EdgeInsets.all(10),
              // //       child: Align(
              // //         alignment: Alignment.topLeft,
              // //         child: FittedBox(
              // //           fit: BoxFit.scaleDown,
              // //           child: Text(
              // //             "Pet Grooming",
              // //             style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              // //           ),
              // //         ),
              // //       ),
              // //     ),
              // //   ],
              // // ),
              //
              //   ],
              // ),

              SizedBox(
                height: 20,
              ),

              // Container(
              //   child: Text(
              //     '  All Services ',
              //     style: TextStyle(
              //       fontSize: 20,
              //       fontWeight: FontWeight.bold,
              //     ),
              //   ),
              // ),



              // SizedBox(
              //   height: 20,
              // ),

              // Row(
              //   children: [
              //     Flexible(
              //       flex: 1,
              //       child: Card(
              //         elevation: 5.0,
              //         shape: RoundedRectangleBorder(
              //           borderRadius: BorderRadius.circular(20.0),
              //           side: BorderSide(
              //             color: Colors.grey.withOpacity(0.2),
              //             width: 1,
              //           ),
              //         ),
              //         child: AspectRatio(
              //             aspectRatio: 1.0,
              //             child: Image.asset('assets/services/62A4BA2F-7E1B-44D6-A021-D61F029CDF4E_1_201_a.jpeg',
              //             fit: BoxFit.contain,
              //             ),),
              //       ),
              //     ),
              //     Flexible(
              //       flex: 1,
              //       child: Card(
              //         elevation: 5.0,
              //         shape: RoundedRectangleBorder(
              //           borderRadius: BorderRadius.circular(20.0),
              //           side: BorderSide(
              //             color: Colors.grey.withOpacity(0.2),
              //             width: 1,
              //           ),
              //         ),
              //         child: AspectRatio(
              //             aspectRatio: 1.0,
              //             child: Image.asset('assets/services/pet_services.webp'),
              //         ),
              //       ),
              //     ),
              //  ],
              // ),

              Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Flexible(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Color(0xFFe9e4f4),
                          ),
                          margin: EdgeInsets.only(left: 10),
                          height: 100,
                          width: 200,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                child: Image.asset('assets/image1.png', height: 50, width: 50),
                              ),
                              SizedBox(height: 8),
                              Padding(
                                padding: EdgeInsets.all(0.5),
                                child: Center(child:
                                Text('House Resource',
                                  style:
                                  TextStyle(fontSize: 16,
                                    color:
                                    Color(0xFFc4c4e8),
                                  ),
                                ),
                                ),
                              ),
                            ],
                          ),

                        ),
                      ),
                      Flexible(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Color(0xFFe9e4f4),
                          ),
                          margin: EdgeInsets.only(left: 10),
                          height: 100,
                          width: 200,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                child: Image.asset('assets/image1.png', height: 50, width: 50),
                              ),
                              SizedBox(height: 8),
                              Padding(
                                padding: EdgeInsets.all(0.5),
                                child: Center(child:
                                Text('Construction',
                                  style:
                                  TextStyle(fontSize: 16,
                                    color:
                                    Color(0xFFc4c4e8),
                                  ),
                                ),
                                ),
                              ),
                            ],
                          ),

                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 150,
                    color: Colors.white,
                    child: Row(
                      //    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Color(0xFFe9e4f4),
                            ),
                            margin: EdgeInsets.only(left: 10),
                            height: 100,
                            width: 200,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  child: Image.asset('assets/image1.png', height: 50, width: 50),
                                ),
                                SizedBox(height: 8),
                                Padding(
                                  padding: EdgeInsets.all(0.5),
                                  child: Center(child:
                                  Text('Events',
                                    style:
                                    TextStyle(fontSize: 16,
                                      color:
                                      Color(0xFFc4c4e8),
                                    ),
                                  ),
                                  ),
                                ),
                              ],
                            ),

                          ),
                        ),
                        Flexible(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Color(0xFFe9e4f4),
                            ),
                            margin: EdgeInsets.only(left: 10),
                            height: 100,
                            width: 200,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  child: Image.asset('assets/image1.png', height: 50, width: 50),
                                ),
                                SizedBox(height: 8),
                                Padding(
                                  padding: EdgeInsets.all(0.5),
                                  child: Center(child:
                                  Text('Events',
                                    style:
                                    TextStyle(fontSize: 16,
                                      color:
                                      Color(0xFFc4c4e8),
                                    ),
                                  ),
                                  ),
                                ),
                              ],
                            ),

                          ),
                        ),
                        Flexible(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xFFf5f1ff),
                            ),
                            margin: EdgeInsets.only(left: 10),
                            height: 100,
                            width: 200,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  child: Image.asset('assets/image1.png', height: 50, width: 50),
                                ),
                                SizedBox(height: 8),
                                Padding(
                                  padding: EdgeInsets.all(0.5),
                                  child: Center(child:
                                  Text('Message',
                                    style:
                                    TextStyle(fontSize: 16,
                                      color:
                                      Color(0xFFc4c4e8),
                                    ),
                                  ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Flexible(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Color(0xFFe9e4f4),
                            ),

                            margin: EdgeInsets.only(left: 10 , right: 10),
                            height: 100,
                            width: 200,

                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset('assets/image1.png', height: 50, width: 50),
                                SizedBox(height: 8),
                                Padding(
                                  padding: EdgeInsets.all(0.5),
                                  child: Center(child:
                                  Text('Events',
                                    style:
                                    TextStyle(fontSize: 16,
                                      color:
                                      Color(0xFFc4c4e8),
                                    ),
                                  ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(
                    height: 20,
                  ),

                  Container(
                    color: Colors.white,
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Text(
                            "Top Rated",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 20.0),
                          child: Text(
                            "View All",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.purpleAccent,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    height: 510,
                    child: GridView.count(
                      shrinkWrap: false,
                      primary: false,
                      crossAxisCount: 2,
                      childAspectRatio:  0.8,
                      crossAxisSpacing:  20,
                      mainAxisSpacing: 20,
                      children: [
                        GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => ServiceInfo()),
                            );

                          },
                          child: Container(
                            height: 270,
                            width: 220,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.grey.shade100,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Container(
                                    child: Image.asset('assets/small_service/3.jpeg'),),),
                                ListTile(
                                  leading: Text('pet',
                                    style: TextStyle(
                                      fontSize:  20,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  trailing: Text("Rs.250",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 12, bottom: 12),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.star,size: 20,
                                        color: Colors.yellow,
                                      ),
                                      Icon(
                                        Icons.star,size: 20,
                                        color: Colors.yellow,
                                      ),
                                      Icon(
                                        Icons.star,size: 20,
                                        color: Colors.yellow,
                                      ),
                                      Icon(
                                        Icons.star,size: 20,
                                        color: Colors.yellow,
                                      ),

                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => ServiceInfo()),
                            );

                          },
                          child: Container(
                            height: 270,
                            width: 220,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.grey.shade100,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                    child: Container(
                                        child: Image.asset('assets/small_services/pet.png'))),
                                ListTile(
                                  leading: Text('pet',
                                    style: TextStyle(
                                      fontSize:  20,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  trailing: Text("Rs.250",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 12, bottom: 12),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.star,size: 20,
                                        color: Colors.yellow,
                                      ),
                                      Icon(
                                        Icons.star,size: 20,
                                        color: Colors.yellow,
                                      ),
                                      Icon(
                                        Icons.star,size: 20,
                                        color: Colors.yellow,
                                      ),
                                      Icon(
                                        Icons.star,size: 20,
                                        color: Colors.yellow,
                                      ),

                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => ServiceInfo()),
                            );

                          },
                          child: Container(
                            height: 270,
                            width: 220,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.grey.shade100,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                    child: Container(
                                      child: Image.asset('assets/small_services/pet.png'),)),
                                ListTile(
                                  leading: Text('pet',
                                    style: TextStyle(
                                      fontSize:  20,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  trailing: Text("Rs.250",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 12, bottom: 12),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.star,size: 20,
                                        color: Colors.yellow,
                                      ),
                                      Icon(
                                        Icons.star,size: 20,
                                        color: Colors.yellow,
                                      ),
                                      Icon(
                                        Icons.star,size: 20,
                                        color: Colors.yellow,
                                      ),
                                      Icon(
                                        Icons.star,size: 20,
                                        color: Colors.yellow,
                                      ),

                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => ServiceInfo()),
                            );

                          },
                          child: Container(
                            height: 270,
                            width: 220,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.grey.shade100,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                    child: Container(
                                        child: Image.asset('assets/small_services/pet.png'))),
                                ListTile(
                                  leading: Text('pet',
                                    style: TextStyle(
                                      fontSize:  20,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  trailing: Text("Rs.250",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 12, bottom: 12),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.star,size: 20,
                                        color: Colors.yellow,
                                      ),
                                      Icon(
                                        Icons.star,size: 20,
                                        color: Colors.yellow,
                                      ),
                                      Icon(
                                        Icons.star,size: 20,
                                        color: Colors.yellow,
                                      ),
                                      Icon(
                                        Icons.star,size: 20,
                                        color: Colors.yellow,
                                      ),

                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ),
    );
  }
 }