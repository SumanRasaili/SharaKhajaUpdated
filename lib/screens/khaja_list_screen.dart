import 'package:flutter/material.dart';

class KhajaSet extends StatelessWidget {
  String title;

  KhajaSet({Key? key, required this.title}) : super(key: key);
  static const routeName= 'khaja-set';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Container(
          padding: const EdgeInsets.all(15),
          child: Table(
            border: TableBorder.all(width: 3, color: Colors.red), //table border
            children: const [
              TableRow(children: [
                TableCell(
                    child: Text(
                  "S/N",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                )),
                TableCell(
                    child: Text(
                  " Day of the Week",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  textAlign: TextAlign.center,
                )),
                TableCell(
                    child: Text(
                  "Khaja Of the Week",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  textAlign: TextAlign.center,
                )),
              ]),
              TableRow(children: [
                TableCell(child: Text("  1.")),
                TableCell(child: Text(" Sunday")),
                TableCell(child: Text(" Chowmein")),
              ]),
              TableRow(children: [
                TableCell(child: Text("  2.")),
                TableCell(child: Text(" Monday")),
                TableCell(child: Text(" Biryani")),
              ]),
              TableRow(children: [
                TableCell(child: Text("  3.")),
                TableCell(child: Text(" Tuesday")),
                TableCell(child: Text(" Dal Bhat")),
              ]),
              TableRow(children: [
                TableCell(child: Text("  4.")),
                TableCell(child: Text(" Wednesday")),
                TableCell(child: Text(" Masu Chiura")),
              ]),
              TableRow(children: [
                TableCell(child: Text("  5.")),
                TableCell(child: Text(" Thursday")),
                TableCell(child: Text(" Noodles")),
              ]),
              TableRow(children: [
                TableCell(child: Text("  6.")),
                TableCell(child: Text(" Friday")),
                TableCell(child: Text(" AAlu Paratha")),
              ]),
              TableRow(children: [
                TableCell(child: Text("  7.")),
                TableCell(child: Text(" Saturday")),
                TableCell(child: Text(" Yayyy! Holiday")),
              ]),
            ],
          ),
        ));
  }
}
