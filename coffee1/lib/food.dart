
import 'package:flutter/material.dart';

class GrideViewBuilderExamples extends StatelessWidget{
  const GrideViewBuilderExamples({super.key});
  @override
  Widget build(BuildContext context){

   List<Map> myfoodList=[
    {
      "image":"assets/images/food 2.jpeg",
      "name":"Italian",
      "name1":"24 places",
      

    },

     {
      "image":"assets/images/food1.jpeg",
      "name":"Thai",
      "name1":"30 places",

    },

     {
      "image":"assets/images/food3.jpeg",
      "name":"Japanese",
      "name1":"50 places",

    },

     {
      "image":"assets/images/food4.jpeg",
      "name":"Korean",
      "name1":"36 places",

    },

     {
      "image":"assets/images/food5.jpeg",
      "name":"German",
      "name1":"24 places",

    },

     {
      "image":"assets/images/food6.jpeg",
      "name":"Thai",
      "name1":"30 places",
      

    },

         {
      "image":"assets/images/food6.jpeg",
      "name":"Thai",
      "name1":"50 places",
      

    },

         {
      "image":"assets/images/food6.jpeg",
      "name":"Thai",
      "name1":"23 places",
      

    },
  ];




    return Scaffold( backgroundColor: Colors.black,
      appBar: AppBar(
       
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back,color: Colors.white,)),
        title: Center(child: Text("Cuisines",style: TextStyle(color: Colors.white),)),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.more_vert),color: Colors.white,),
        ],
        backgroundColor: Colors.black,
      ),
    
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount:2,
            crossAxisSpacing: 15,
            mainAxisSpacing: 15,),
            itemCount: 8,
            itemBuilder: (context, index){
              return Column(
                children: [
                  
                  Container(
                    width: double.infinity,
                    height: 100,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.blue,image: DecorationImage(image: AssetImage(myfoodList[index]["image"]),
                    fit: BoxFit.cover)),
                     
                  
                  ),
                  
                  SizedBox(width: 300),
                  Text(myfoodList[index]["name"],style: TextStyle(fontSize: 20,color: Colors.white),),
                  Text(myfoodList[index]["name1"],style: TextStyle(fontSize: 17,color: const Color.fromARGB(255, 119, 116, 116)),),
                  
        
                  
        
                  
                  
              
                ],
              );
            },
        ),
      ));
  }
}