



import 'package:flutter/material.dart';
import 'package:flutter_fruitsitems_1/model/modelinfo/InfoFruits.dart';
import 'package:flutter_fruitsitems_1/model/modelinfo/InfoVegitables.dart';
import 'package:flutter_fruitsitems_1/model/modelinfo/dryfruits_info.dart';


class InfoPage extends StatefulWidget {
        // Info inf; 
   InfoPage({super.key});

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  @override
  Widget build(BuildContext context) {


   

    
    return Container(  
          
           margin: EdgeInsets.only (left:25, right: 25), 
           width : 300 , 
           decoration: BoxDecoration(  
             borderRadius: BorderRadius.circular(10)
           ),
    
           child : Expanded(   
              child : ListView.builder(  
                  itemCount:Info_Dryfruits.ProductName.length,
                  scrollDirection: Axis.vertical,
                  
               itemBuilder : ( context , index){  
                      return Column (
                       
                        children: [
                          Container(
           
                           decoration :BoxDecoration (  
                              borderRadius: BorderRadius.circular(12) , 
                              color: const Color.fromARGB(255, 255, 226, 224)
                           ) , 
           
                            child: Row(
                              children: [
           
                               Container(  
                                 child:Column (  
                                    children : [ 
                                       Image(
                                  height: 50,
                                  width: 80,
                                  image: NetworkImage(
                                      Info_Dryfruits.ProductImage[index].toString()),
                                      
                                ),
                                const SizedBox(
                                  height: 1,
                                ),
                                Text(Info_Dryfruits.ProductName[index].toString(),
                                    style: TextStyle(
                                        fontSize: 16, fontWeight: FontWeight.w500)),
                                    ]
                                 )
                               ),
                               
           
           
           
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                    Info_Dryfruits.Description[index].toString(),
                                      
                                    style: TextStyle(
                                        fontSize: 16, fontWeight: FontWeight.w500)),
                                        const SizedBox(
                                  height: 5,
                                ),
                            
                              ],
                            ),
        
        
        
                          ),
           
           
           
           
          
                            
        
        
        
                          
                           
           
           
           
           
           
           
           
           
           
           
           
           
                           
                           
           
           
           
           
                         
           
           
           
           
           
           
           
               
               
               
                        ],
                      );                         
                 
                }
              )
           )
           
    
    
    
          
    );
  }
}

