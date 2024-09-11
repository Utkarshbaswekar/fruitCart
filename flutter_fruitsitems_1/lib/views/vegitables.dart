import 'package:flutter/material.dart';
import 'package:flutter_fruitsitems_1/Category.dart';
import 'package:flutter_fruitsitems_1/model/fruits.dart';
import 'package:flutter_fruitsitems_1/model/modelinfo/InfoVegitables.dart';
import 'package:flutter_fruitsitems_1/model/vegitables.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Veg extends StatefulWidget {
  const  Veg({super.key});

  @override
  State< Veg> createState() => _VegState();
}

class _VegState extends State< Veg> {
  //updating the new selected index
  void _navigatethebotombar(int index) {
    setState(() {
    });
  }


  //pages inside the app

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 121, 236, 125),
        appBar: AppBar(
          title:
              const Text('Vegitables items', style: TextStyle(color: Colors.black)),
          centerTitle: true,
          actions: [
            Icon(Icons.shopping_bag_outlined,
                color: const Color.fromARGB(255, 0, 0, 0))
          ],
        ),
        body: Column(children: [
          Expanded(
              child: ListView.builder(
                  itemCount: fruits.ProductName.length,
                  itemBuilder: (context, index) {
                    return Card(
                        child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                // Image(
                                //   height: 100,
                                //   width: 100,
                                //   image: NetworkImage(
                                //      Vegitables. ProductImage[index].toString()),
                                // ),

                                      Image(
                                  height: 100,
                                  width: 100,
                                  // image: NetworkImage(
                                  //    fruits. ProductImage[index].toString()
                                     
                                        

                                  
                                  //  ),



                                   image: AssetImage(vegitables1.ProductImage[index].toString())
                                ),

                                const SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(children: [
                                        Text(Vegitables.ProductName[index].toString(),
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500)),
                                        const SizedBox(width : 10),
                                        Text(
                                            Vegitables.ProductUnit[index].toString() +
                                                " " +
                                                r"$" +
                                               Vegitables. ProductPrice[index].toString(),
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500)),
                                        const SizedBox(height: 10)
                                      ]),
                                      const SizedBox(height: 20),
                                      Row(children: [
                                        Container(
                                            height: 35,
                                            width: 100,
                                            decoration: BoxDecoration(
                                                color: Colors.green,
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                            child: Center(
                                                child: Text(
                                              "Add to cart",
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ))),
                                      ]),
                                    ],
                                  ),
                                )
                              ])
                        ],
                      ),
                    ));
                  })), 





                  Container( 

                  
       // padding : const EdgeInsets.symmetric(vertical:20), 
          
      
             child : GNav( 
              color:const Color.fromARGB(255, 70, 215, 75) , 
              activeColor: const Color.fromARGB(255, 23, 140, 2),
              mainAxisAlignment: MainAxisAlignment.center ,
             
              tabs : [  
                  GButton (  
                    onPressed: () {  
                         Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Category1()),
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
        ]),




      );
  }
}
