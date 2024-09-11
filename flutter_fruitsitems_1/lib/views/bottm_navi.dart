

import 'package:flutter/material.dart';
import 'package:flutter_fruitsitems_1/Category.dart';
import 'package:google_nav_bar/google_nav_bar.dart';


class MyBottom extends StatelessWidget {

       void Function (int)? onTabChange ; 
     MyBottom({super.key,  required   this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
       Container( 
        padding : const EdgeInsets.symmetric(vertical:20), 
          
      
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
      ]
    ) ;
  }
}