import 'package:flutter/material.dart';
import 'package:saharakhaja/screens/khaja_list_screen.dart';

import '../screens/employee_list_screen.dart';


class RowWidget extends StatelessWidget {

  const RowWidget({ Key? key }) : super(key: key);
  static const routeName= 'khaja-set';

  @override
  Widget build(BuildContext context) {
    return Container(
          padding: const EdgeInsets.symmetric(vertical: 250),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed(EmployeePage.routeName);
                },
                splashColor: Colors.yellow,
                child: Container(
                  height: 100,
                  width: 150,
                  color: Colors.blue,
                  child: const Text(
                    "Employee",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed(KhajaSet.routeName);
                  },
                  splashColor: Colors.yellow,
                  child: Container(
                    height: 100,
                    width: 150,
                    color: Colors.red,
                    child: const Text(
                      "Khaja Set",
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                    ),
                  ))
            ],
          ),
        );
  }
}