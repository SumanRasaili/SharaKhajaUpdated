import 'package:flutter/material.dart';


class EmployeeDetails extends StatelessWidget {
  final String name;
  final String title;
  final String description;
  final String adddress;
  final String contact;

 const  EmployeeDetails({
    Key? key,
    required this.title,
    required this.name,
    required this.description,
    required this.adddress,
    required this.contact, 
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Container(
          padding: EdgeInsets.symmetric(vertical: 50),
         
          height: 300,
          width: 300,
          // child: Card(
            
          //     child: Padding(
          //       padding: const EdgeInsets.only(left: 20.0,top:20.0 ,right: 20.0,bottom:10.0 ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Name:   $name ",
                      textAlign: TextAlign.left,
                          style: const TextStyle(color: Colors.black)),
                        const   SizedBox(height: 4,),
                      Text("Description:   $description",
                      textAlign: TextAlign.left,
                          style: const TextStyle(color: Colors.black)),
                       const    SizedBox(height: 4,),
                      Text("Address:   $adddress ",
                      textAlign: TextAlign.left,
                          style: const TextStyle(color: Colors.black)),
                        const   SizedBox(height: 4,),
                      Text("Contact:   $contact \n",
                      textAlign: TextAlign.left,
                          style: const TextStyle(color: Colors.black)),
                    ],
                  ),
                ),
              ),
            
        
        );
  }
}
