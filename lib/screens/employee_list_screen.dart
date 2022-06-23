import 'package:flutter/material.dart';

// class EmployeeScreen extends StatelessWidget {
//   const EmployeeScreen({ Key? key }) : super(key: key);
  



import '../widgets/employee_details.dart';

class EmployeePage extends StatelessWidget {
  final String title;
  const  EmployeePage( {Key? key, required this.title}) : super(key: key);
  static const routeName = 'employee-list';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>const  EmployeeDetails(
                              name: 'Bishal G.C',
                              title: "Chief Executive Officer",
                              adddress: 'Kalanki kathmandu ',
                              description: 'He is the boss of the company',
                              contact: '98747374344',
                            )),
                  );
                },
                title: const Text("Chief executive Officer"),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const EmployeeDetails(
                              name: 'Sagar Devkota ',
                              title: "Software Engineer",
                              adddress: 'Sanothimi Bhaktapur',
                              description: 'He is the lead backend developer',
                              contact: '94738483834',
                            )),
                  );
                },
                title: const Text('Software Engineer'),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const EmployeeDetails(
                              name: 'Suman Rasaili',
                              title: "Intern",
                              adddress: 'Samakhusi Kathmandu',
                              description: 'He is the intern in flutter',
                              contact: '9845936448',
                            )),
                  );
                },
                title: const Text('Intern'),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const EmployeeDetails(
                              name: 'Abhik Karki',
                              title: "CSR",
                              description:
                                  'He is Actively involved in Customer Service representative department ',
                              adddress: 'Dhumbarahi Kathmandu ',
                              contact: '894845895495',
                            )),
                  );
                },
                title: const Text('Customer Support Representatives'),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              margin:const EdgeInsets.all(10.0),
              child: ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>const  EmployeeDetails(
                              name: 'Bimala Singh Thakuri',
                              title: "Accountant",
                              adddress: 'Kathmandu',
                              description:
                                  'She is the Head of the Finance department ',
                              contact: '39847387483',
                            )),
                  );
                },
                title: const Text('Accountant'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
