import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:saharakhaja/auth_services.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({ Key? key }) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return Drawer( 
      child: Column(children: [
         UserAccountsDrawerHeader(
        accountName: Text(FirebaseAuth.instance.currentUser!.displayName!),
              accountEmail: Text(FirebaseAuth.instance.currentUser!.email!),
              currentAccountPicture:const  CircleAvatar(
                backgroundImage: AssetImage('assets/image/sahara.png'),
                maxRadius: 50,
                backgroundColor: Colors.green,
                child: Text('Sahara'),
              ),
        ),
     const  Divider(),  
      ListTile(
        leading:const  Icon(Icons.shop),
        title: const Text("Shop"),
        onTap: (){
          Navigator.of(context).pushReplacementNamed('/');
        },
      ),
      ListTile(
          leading:const  Icon(Icons.contact_mail),
          title:const  Text("About"),
          onTap: (){},
        ),
        ListTile(
          leading:const Icon(Icons.local_post_office),
          title:const Text("Contacts"),
          onTap: (){},
        ),
        ListTile(
          leading: const Icon(Icons.local_post_office),
          title: const Text("Address"),

          onTap: (){},
        ),
        ListTile(
          leading: const Icon(Icons.logout),
          title: const Text("Logout"),

          onTap: (){

            AuthService().signOut();
          },
        ),
        
      ])
    );
  }
}