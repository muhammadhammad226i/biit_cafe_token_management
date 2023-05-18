
import 'package:biit_cafe_token_management/screens/Restriction_secreen.dart';
import 'package:biit_cafe_token_management/screens/add_faculty_secreen.dart';
import 'package:biit_cafe_token_management/screens/add_food_screen.dart';
import 'package:biit_cafe_token_management/screens/add_parent_secreen.dart';
import 'package:biit_cafe_token_management/screens/add_student_secreen.dart';
import 'package:biit_cafe_token_management/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'screens/add_balance_secreen.dart';
import 'screens/view_menu_secreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Button Screen',
      home: RestrictionScreen(),
    );
  }
}

class ButtonScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DashBoard'),
        leading: IconButton(icon: Icon(Icons.arrow_back),onPressed: (){},),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height:16,width: 5,),
            ElevatedButton(
                          style: ElevatedButton.styleFrom(fixedSize: Size(200, 40)),

              onPressed: () {
                Get.to(ViewMenu());
              },
              
              child: Text('view menu'),
            ),
            SizedBox(height:16,width: 5,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(fixedSize: Size(200, 40)),
              onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                  return AddFoodPage();
                }));
              },
              child: Text('Add Food'),
            ),
            SizedBox(height:16,width: 5,),
            ElevatedButton(
                            style: ElevatedButton.styleFrom(fixedSize: Size(200, 40)),

              onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context){
                  return AddStudentScreen();}));
              },
              child: Text('Add Students'),
            ),
            SizedBox(height:16,width: 5,),
            ElevatedButton(
                            style: ElevatedButton.styleFrom(fixedSize: Size(200, 40)),

              onPressed: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context){
                  return AddParentScreen();}));
                
              },
              child: Text('Add Parent'),
            ),
            SizedBox(height:16,width: 5,),
            ElevatedButton(
                            style: ElevatedButton.styleFrom(fixedSize: Size(200, 40)),

              onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                  return AddFacultyScreen();}));

              },
              child: Text('Add Faculty Member'),
            ),
            SizedBox(height:16,width: 5,),
            ElevatedButton(
                            style: ElevatedButton.styleFrom(fixedSize: Size(200, 40)),

              onPressed: () {},
              child: Text('View Orders'),
            ),
            SizedBox(height:16,width: 5,),
            ElevatedButton(
                            style: ElevatedButton.styleFrom(fixedSize: Size(200, 40)),

              onPressed: () {

                 Navigator.push(context, MaterialPageRoute(builder: (context){
                  return AddBalanceScreen();}));
              },
           child:Text('Add Balance')
           ),
            SizedBox(height:16,width: 5,),
            
          
       
         
           
           
    


          ],
        ),
      ),
    );
  }
}








