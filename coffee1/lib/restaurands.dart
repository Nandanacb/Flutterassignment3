import 'package:coffee1/database.dart';
import 'package:flutter/material.dart';

class Restaurands extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
 
    backgroundColor: Colors.black,
      
      body:Column(
        children: [

          Stack(
           children: [
           
           ClipRRect(
             child: Container(
             height: 300,
             width: double.infinity,
             decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/download.jpeg"),
             fit: BoxFit.cover),
             ),
                      ),
           ),
                    Positioned(
           top:10,
           left:10,
           child:Container(
             height: 50,
             width: 50,
             child: Icon(Icons.arrow_back,color: Colors.white,size: 40, 
           ), ),
                    ),
          
          
           Positioned(
           top:10,
           right:10,
           child:Container(
             height: 100,
             width: 100,
             child: Text("Filters",style: TextStyle(fontSize: 25,fontWeight:FontWeight.bold,color: Colors.white),
           ), ),
                    ),
          
          
          Positioned(
           top:130,
           left:10,
           child:Container(
             height: 200,
             width: 230,
             child:   Text("American Restaurants",style: TextStyle(fontSize: 40,fontWeight:FontWeight.bold,color: Colors.white),
           ), ),
                    ),
          
          
          
                    Positioned(
           top:250,
           left:10,
           child:Container(
             height: 250,
             width: 260,
             child:   Text("36 places",style: TextStyle(fontSize: 25,color: Colors.white),
           ), ),
                    ),
          
                   ],
                    ),
          
          
          



           SizedBox(height: 15),
            ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context,index){
              return SizedBox(height: 25,);
            },
            itemCount: 4,
            itemBuilder: (context,index){
              return Container(
                height: 120,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 56, 55, 55),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding:EdgeInsets.all(14),
                  child: Row(
                    children: [
                      Container(
                        height: 160,
                        width: 140,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image:AssetImage(Database.myrestaurantsList[index]['image']),
                            fit: BoxFit.cover ),
                            color: Colors.white),

                      ),
                      SizedBox(width:10),
                      Column(
            
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                         
                          Text(Database.myrestaurantsList[index]['name'],
                          
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          
                          ),),
                            
                       SizedBox(height: 5),
                         Row(
                            children: [
                          Icon(Icons.pin_drop,size:13,color:  Colors.white),
                          Text(Database.myrestaurantsList[index]['name1'],
                          
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 9.5,
                            fontWeight: FontWeight.bold,
                          
                          ),),

                        
                        ],),

                          SizedBox(height: 22),
                          
                          Row(
                            children: [
                              Icon(Icons.star,color: Colors.yellow,size: 10),
                              Text(Database.myrestaurantsList[index]['text1'],
                              style: TextStyle(color: Colors.white,fontSize: 9.5,fontWeight: FontWeight.bold),),
                              
                              
                          
                            ],
                          ),
                        ],
                      ),

                     
                      
                            
                          ],
                        
                        ),
              ),
                     
                      
                      
      );
  },
  
      )],
                        ),
                      );
      
            

              
            }
              
  
  
                

  }

              
      
  