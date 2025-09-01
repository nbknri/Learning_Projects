import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';

class AddUser extends StatefulWidget {
  const AddUser({super.key});

  @override
  State<AddUser> createState() => _AddUserState();
}

class _AddUserState extends State<AddUser> {
  final bloodGroups = ['A+', 'A-', 'B+', 'B-', 'AB+', 'AB-', 'O+', 'O-'];
  String? selectedGroup;
  final CollectionReference donor = FirebaseFirestore.instance.collection(
    'donor',
  );

  void addDonor() {
    final data = {
      'name': donorName.text,
      'mobile': donorMobile.text,
      'group': selectedGroup,
    };
    donor.add(data);
  }

  TextEditingController donorName = TextEditingController();
  TextEditingController donorMobile = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Donors'),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: donorName,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text('Donor Name'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: donorMobile,
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                maxLength: 10,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text('Mobile Number'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: DropdownMenu(
                hintText: 'Select Blood Group',
                width: 350,
                dropdownMenuEntries: bloodGroups
                    .map((e) => DropdownMenuEntry(value: e, label: e))
                    .toList(),
                onSelected: (val) {
                  selectedGroup = val as String;
                },
              ),
            ),
            ElevatedButton(
              onPressed: () {
                if (donorName.text.length >=3 && donorMobile.text.length >=10 && selectedGroup != null){
                  addDonor();
                Navigator.pop(context);
                }
                
              },
              style: ButtonStyle(
                minimumSize: WidgetStatePropertyAll(Size(double.infinity, 50)),
                backgroundColor: WidgetStatePropertyAll(Colors.red),
              ),
              child: Text(
                'Submit',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
