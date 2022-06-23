
import 'package:flutter/material.dart';
import 'package:saharakhaja/widgets/drawer.dart';
import 'package:saharakhaja/widgets/inkwell_emp_khaja.dart';

class HomePage extends StatelessWidget {
  final String title;
  const HomePage({required this.title, Key? key}) : super(key: key);
  static const routeName = 'home-page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        drawer:const  AppDrawer(),
        body : const RowWidget()
        
         );
  }
}
