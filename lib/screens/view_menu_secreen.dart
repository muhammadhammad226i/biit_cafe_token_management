import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'login_screen.dart';

class ViewMenu extends StatelessWidget {
  const ViewMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
         appBar: AppBar(
        title: Text('Menu'),
      ),
          body: SingleChildScrollView(
            child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Center(
            child: Column(
              children: [
                Text('Menu',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                SizedBox(
                  height: 30,

                ),
                GestureDetector(
                  onTap: () {
                    Get.to(ItemRow(type:"Junk Food"));
                  },
                  child: Container(
                    height: 100,
                    width: 100,
                    child: Image.network( 'https://media.istockphoto.com/id/1413669079/photo/cheeseburger-with-grilled-red-bell-pepper-arugula-and-dill-pickles.jpg?s=1024x1024&w=is&k=20&c=mbdLnHsN2LA-M8WFXe1STYt9GxJa04QRxGDrIGV_7jg=',
                   ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Junk Food',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Divider(),
                SizedBox(
                  height: 30,
                ),
                GestureDetector(
                 onTap: (){
                   Get.to(ItemRow(type:"Drinks"));
                 },
                  child: Container(
                    height: 100,
                    width: 100,
                    child: Image.network('https://w7.pngwing.com/pngs/127/887/png-transparent-fizzy-drinks-juice-sprite-coca-cola-fanta-soft-drinks-plastic-bottle-drinking-soft-drinks-thumbnail.png'),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  child: Text(
                    'Drinks',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                Divider(),
                SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: (){
                     Get.to(ItemRow(type:"Deserts"));
                  },
                  child: Container(
                    height: 100,
                    width: 100,
                    child: Image.network('https://w7.pngwing.com/pngs/424/132/png-transparent-chocolate-ice-cream-ice-cream-cones-sundae-ice-cream-cream-food-frozen-dessert-thumbnail.png'),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Deserts',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Divider(),
              ],
            ),
                  ),
                ),
          )),
    );
  }
}

class ItemRow extends StatefulWidget {
  String type;

  ItemRow({super.key,required this.type});
  @override
  _ItemRowState createState() => _ItemRowState();
}

class _ItemRowState extends State<ItemRow> {
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
        appBar: AppBar(
          title: Text(widget.type),
          leading: IconButton(icon: Icon(Icons.arrow_back,),onPressed: (){
          Navigator.pop(context);
        },),),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                
                ListTile(
                  leading: Image.network(
                    'https://media.istockphoto.com/id/1413669079/photo/cheeseburger-with-grilled-red-bell-pepper-arugula-and-dill-pickles.jpg?s=1024x1024&w=is&k=20&c=mbdLnHsN2LA-M8WFXe1STYt9GxJa04QRxGDrIGV_7jg=',
                   
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                  title: Text('Burger'),
                  trailing: Checkbox(
                    value: _isChecked1,
                    onChanged: (bool? value) {
                      setState(() {
                        _isChecked1 = value ?? false;
                      });
                    },
                  ),
                ),
                ListTile(
                  leading: Image.network(
                   'https://media.istockphoto.com/id/1406515367/photo/pizza-with-chicken-and-mushrooms-with-cheese-top-view-on-dark-stone-table.jpg?s=1024x1024&w=is&k=20&c=WyMSNGsBAvLiBZOg6smNIx1l2WhMU7c6X6T1HjeoyOw=',
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                  title: Text('Pizza'),
                  trailing: Checkbox(
                    value: _isChecked2,
                    onChanged: (bool? value) {
                      setState(() {
                        _isChecked2 = value ?? false;
                      });
                    },
                  ),
                ),
                ListTile(
                  leading: Image.network(
                   'https://mir-s3-cdn-cf.behance.net/projects/404/75cabb95034859.Y3JvcCw3NTgsNTkzLDI3NCwxNTU.jpg',
        
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                  title: Text('Zinger'),
                  trailing: Checkbox(
                    value: _isChecked3,
                    onChanged: (bool? value) {
                      setState(() {
                        _isChecked3 = value ?? false;
                      });
                    },
                  ),
                ),
                ListTile(
                  leading: Image.network(
                    'https://cdn.pixabay.com/photo/2017/12/09/08/18/pizza-3007395_960_720.jpg',
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                  title: Text('Chicken Tikka'),
                  trailing: Checkbox(
                    value: _isChecked4,
                    onChanged: (bool? value) {
                      setState(() {
                        _isChecked4 = value ?? false;
                      });
                    },
                  ),
                ),
                ListTile(
                  leading: Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSVOfgnhzP7wT30FnLFv0eVvcmB66XP-HBU9A&usqp=CAU',
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                  title: Text('Chicken Fajita'),
                  trailing: Checkbox(
                    value: _isChecked5,
                    onChanged: (bool? value) {
                      setState(() {
                        _isChecked5 = value ?? false;
                      });
                    },
                  ),
                ),
                ListTile(
                  leading: Image.network(
                    'https://ashleemarie.com/wp-content/uploads/2016/02/chicken-fajita-pizza.jpg',
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                  title: Text('Chicken Paproni'),
                  trailing: Checkbox(
                    value: _isChecked6,
                    onChanged: (bool? value) {
                      setState(() {
                        _isChecked6 = value ?? false;
                      });
                    },
                  ),
                ),
              
              
              ],
            ),
          ),
        ),
      ),
    );
  }
}


  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Form',
      theme: ThemeData(
        primaryColor: Colors.indigo,
        accentColor: Colors.pink,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.resolveWith<Color>(
              (Set<MaterialState> states) {
                if (states.contains(MaterialState.disabled)) {
                  return Colors.grey;
                }
                return Colors.indigo;
              },
            ),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ),
        ),
      ),
      home: LoginPage(),
    );
  }



class MyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Add your button click logic here
          },
          child: Text('View Menu'),
        ),
      ),
    );
  }
}

