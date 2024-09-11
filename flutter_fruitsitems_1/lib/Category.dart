import 'package:flutter/material.dart';
import 'package:flutter_fruitsitems_1/model/dryfruits.dart';
import 'package:flutter_fruitsitems_1/model/fruits.dart';
import 'package:flutter_fruitsitems_1/model/modelinfo/InfoFruits.dart';
import 'package:flutter_fruitsitems_1/model/modelinfo/InfoVegitables.dart';
import 'package:flutter_fruitsitems_1/model/vegitables.dart';
import 'package:flutter_fruitsitems_1/views/dryfruits.dart';
import 'package:flutter_fruitsitems_1/views/fruits_page.dart';
import 'package:flutter_fruitsitems_1/views/vegitables.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Category1 extends StatefulWidget {
  const Category1({super.key});

  @override
  State<Category1> createState() => _Category1State();
}

class _Category1State extends State<Category1> {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 230, 238, 230),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 40, 255, 47),
          title: const Text('Farm Kart', style: TextStyle(color: Colors.black)),
          centerTitle: true,
          actions: const [
            Icon(Icons.shopping_bag_outlined,
                color: Color.fromARGB(255, 0, 0, 0))
          ],
        ),
        drawer: const Drawer(
            backgroundColor: Color.fromARGB(255, 230, 238, 230),
            child: Column(children: [
              DrawerHeader(
                  child: Icon(
                Icons.card_travel,
                size: 45,
                color: Colors.black,
              )),

              // List tyle

              ListTile(leading: Icon(Icons.arrow_right), title: Text('Fruits')),

              ListTile(
                  leading: Icon(Icons.arrow_right), title: Text('Dry Fruits')),

              ListTile(
                  leading: Icon(Icons.arrow_right), title: Text('Vegitables')),
            ])),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 200, 236, 243),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const FruitsPage()),
                    );
                  },
                  child: const Text("Fruits",
                      style: TextStyle(
                        fontSize: 36,
                      )),
                ),
              ),
              SizedBox(
                height: 200,
                width: double.infinity,
                child: ListView.builder(
                  itemCount: fruits.ProductName.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 100,
                        width: 150,
                        decoration: const BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: Column(
                          children: [
                              Image(
                                  height: 100,
                                  width: 100,
                                  // image: NetworkImage(
                                  //    fruits. ProductImage[index].toString()
                                     
                                     
                                  //    ),



                                   image: AssetImage(fruits.ProductImage[index].toString())
                                ),


                  

                              
                            const SizedBox(
                              height: 10,
                            ),
                            Text(fruits.ProductName[index].toString(),
                                style: const TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500)),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                                fruits.ProductUnit[index].toString() +
                                    " " +
                                    r"$" +
                                    fruits.ProductPrice[index].toString(),
                                style: const TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500)),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 200, 236, 243),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Dry()),
                    );
                  },
                  child: const Text("Dry-Fruits",
                      style: TextStyle(
                        fontSize: 36,
                      )),
                ),
              ),
              SizedBox(
                height: 200,
                width: double.infinity,
                child: ListView.builder(
                  itemCount: Dryfruits.ProductName.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 100,
                        width: 150,
                        decoration: const BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: Column(
                          children: [
                            Image(
                                  height: 100,
                                  width: 100,
                                  // image: NetworkImage(
                                  //    fruits. ProductImage[index].toString()
                                     
                                     
                                  //    ),



                                   image: AssetImage(Dryfruits.ProductImage[index].toString())
                                ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(Dryfruits.ProductName[index].toString(),
                                style: const TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500)),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                                Dryfruits.ProductUnit[index].toString() +
                                    " " +
                                    r"$" +
                                    Dryfruits.ProductPrice[index].toString(),
                                style: const TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500)),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 200, 236, 243),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Veg()),
                    );
                  },
                  child: const Text("Vegitables",
                      style: TextStyle(
                        fontSize: 36,
                      )),
                ),
              ),
              SizedBox(
                height: 200,
                width: double.infinity,
                child: ListView.builder(
                  itemCount: Vegitables.ProductName.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 100,
                        width: 150,
                        decoration: const BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: Column(
                          children: [

                             Image(
                                  height: 100,
                                  width: 100,
                                  // image: NetworkImage(
                                  //    fruits. ProductImage[index].toString()
                                     
                                     
                                  //    ),



                                   image: AssetImage(vegitables1.ProductImage[index].toString())
                                ),
                            
                            const SizedBox(
                              height: 10,
                            ),
                            Text(Vegitables.ProductName[index].toString(),
                                style: const TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500)),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                                Vegitables.ProductUnit[index].toString() +
                                    " " +
                                    r"$" +
                                    Vegitables.ProductPrice[index].toString(),
                                style: const TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500)),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),

               Container( 
        //padding : const EdgeInsets.symmetric(vertical:20), 
          
      
             child : GNav( 
              color:const Color.fromARGB(255, 70, 215, 75) , 
              activeColor: const Color.fromARGB(255, 23, 140, 2),
              mainAxisAlignment: MainAxisAlignment.center ,
             
              tabs : [  
                  GButton (  
                    onPressed: () {  
                         Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Category1()),
                    );
                    },
                     icon: Icons.home, 
                     text:'Home'
                  ), 
      
                  const GButton( 
                     icon: Icons.book, 
                      text:'Add'
                  )
              ]
              )
      ),
            ],
            
          ),
        ),

          

        
       
        
        
        );
  }
}
