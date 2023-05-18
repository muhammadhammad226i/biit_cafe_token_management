import 'package:flutter/material.dart';

class UserMenuScreen extends StatefulWidget {
  @override
  _ItemRowState createState() => _ItemRowState();
}

class _ItemRowState extends State<UserMenuScreen> {
  bool _isChecked1 = false;
    bool _isChecked2 = false;
      bool _isChecked3 = false;
        bool _isChecked4 = false;
          bool _isChecked5 = false;
            bool _isChecked6 = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(leading: IconButton(icon: Icon(Icons.arrow_back,),onPressed: (){
          Navigator.pop(context);
        },),),
        body: Padding(
          padding: const EdgeInsets.all(80.0),
          child: Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                
                ListTile(
                  leading: Row(
                    children: [
                      Image.network(
                        'https://media.istockphoto.com/id/1413669079/photo/cheeseburger-with-grilled-red-bell-pepper-arugula-and-dill-pickles.jpg?s=1024x1024&w=is&k=20&c=mbdLnHsN2LA-M8WFXe1STYt9GxJa04QRxGDrIGV_7jg=',
                       
                        width: 50,
                        height: 50,
                        fit: BoxFit.cover,
                      ),
                      Column(
                        children: [
                          Text('Burger'),
                          Text('100 Rs'),
                        ],
                      ),
                    ],
                  ),
                   
                  trailing: Row(children: [
                    Text("1  -  +",style: TextStyle(fontWeight: FontWeight.bold),)
                  ],)
                ),
                ListTile(
                  leading: Row(
                    children: [
                      Image.network(
                       'https://media.istockphoto.com/id/1406515367/photo/pizza-with-chicken-and-mushrooms-with-cheese-top-view-on-dark-stone-table.jpg?s=1024x1024&w=is&k=20&c=WyMSNGsBAvLiBZOg6smNIx1l2WhMU7c6X6T1HjeoyOw=',
                        width: 50,
                        height: 50,
                        fit: BoxFit.cover,
                      ),
                      Column(
                        children: [
                          Text('Burger'),
                          Text('100 Rs'),
                        ],
                      ),
                    ],
                  ),
                  title: Text('Pizza'),
                      
                  trailing: Row(children: [
                    Text("1  -  +",style: TextStyle(fontWeight: FontWeight.bold),)
                  ],)
                ),
                ListTile(
                  leading: Row(
                    children: [
                      Image.network(
                       'https://mir-s3-cdn-cf.behance.net/projects/404/75cabb95034859.Y3JvcCw3NTgsNTkzLDI3NCwxNTU.jpg',
          
                        width: 50,
                        height: 50,
                        fit: BoxFit.cover,
                      ),
                      Column(
                        children: [
                          Text('Burger'),
                          Text('100 Rs'),
                        ],
                      ),
                    ],
                  ),
                  title: Text('Zinger'),
                      
                  trailing: Row(children: [
                    Text("1  -  +",style: TextStyle(fontWeight: FontWeight.bold),)
                  ],)
                ),
                ListTile(
                  leading: Row(
                    children: [
                      Image.network(
                        'https://cdn.pixabay.com/photo/2017/12/09/08/18/pizza-3007395_960_720.jpg',
                        width: 50,
                        height: 50,
                        fit: BoxFit.cover,
                      ),
                      Column(
                        children: [
                          Text('Burger'),
                          Text('100 Rs'),
                        ],
                      ),
                    ],
                  ),
                  title: Text('Chicken Tikka'),
                      
                  trailing: Row(children: [
                    Text("1  -  +",style: TextStyle(fontWeight: FontWeight.bold),)
                  ],)
                ),
                ListTile(
                  leading: Row(
                    children: [
                      Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSVOfgnhzP7wT30FnLFv0eVvcmB66XP-HBU9A&usqp=CAU',
                        width: 50,
                        height: 50,
                        fit: BoxFit.cover,
                      ),
                      Column(
                        children: [
                          Text('Burger'),
                          Text('100 Rs'),
                        ],
                      ),
                    ],
                  ),
                  title: Text('Chicken Fajita'),
                      
                  trailing: Row(children: [
                    Text("1  -  +",style: TextStyle(fontWeight: FontWeight.bold),)
                  ],)
                ),
                ListTile(
                  leading: Row(
                    children: [
                      Image.network(
                        'https://ashleemarie.com/wp-content/uploads/2016/02/chicken-fajita-pizza.jpg',
                        width: 50,
                        height: 50,
                        fit: BoxFit.cover,
                      ),
                      Column(
                        children: [
                          Text('Burger'),
                          Text('100 Rs'),
                        ],
                      ),
                    ],
                  ),
                  title: Text('Chicken Paproni'),
                     
                  trailing: Row(children: [
                    Text("1  -  +",style: TextStyle(fontWeight: FontWeight.bold),)
                  ],)
                ),
              
              
              ],
            ),
          ),
        ),
      ),
    );
  }
}