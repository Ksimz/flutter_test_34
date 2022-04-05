import "package:flutter/material.dart";
import 'footnote.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text("Terms & Conditions"),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        child: ListView(
          children: const [
            SizedBox(
              height: 20,
            ),
            Text(
                "South Africa’s Protection of Personal Information Act (POPI), signed into law by the president, establishes requirements for how both public and private organizations process personal information. Organizations who are subject to POPI and who engage in the collection, storage, or processing of personal information, must comply with this lawGoogle provides product capabilities and contractual commitments to facilitate our customers’ compliance with South Africa's POPI Act. Customers that are subject to POPI can define how their data is stored, processed, and protected by signing a Data Processing Amendment for Google Workspace and/or Google Cloud Platform.")
          ],
        ),
      ),
      bottomNavigationBar: Container(
        child: MaterialButton(
          onPressed: () => {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const FootNote()),
            )
          },
          child: const Text("Next Page"),
          color: Colors.blue,
        ),
      ),
    );
  }
}
