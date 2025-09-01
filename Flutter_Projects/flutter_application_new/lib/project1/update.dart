import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';

class UpdateDonor extends StatefulWidget {
  const UpdateDonor({super.key});

  @override
  State<UpdateDonor> createState() => _UpdateDonorState();
}

class _UpdateDonorState extends State<UpdateDonor> {
  final bloodGroups = ['A+', 'A-', 'B+', 'B-', 'AB+', 'AB-', 'O+', 'O-'];
  String? selectedGroup;
  final CollectionReference donor = FirebaseFirestore.instance.collection(
    'donor',
  );

  TextEditingController donorName = TextEditingController();
  TextEditingController donorMobile = TextEditingController();

  //==========================================

  late String docId;

  @override
  void initState() {
    super.initState();
    // get arguments after the widget is built
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final args = ModalRoute.of(context)!.settings.arguments as Map;
      donorName.text = args['name'];
      donorMobile.text = args['mobile'];
      selectedGroup = args['group'];
      docId = args['id'];
      setState(() {}); // refresh once
    });
  }
  //==========================================

  void updateDonor(docId) {
    final data = {
      'name': donorName.text,
      'mobile': donorMobile.text,
      'group': selectedGroup,
    };
    donor.doc(docId).update(data);
  }

  @override
  Widget build(BuildContext context) {
    // final args = ModalRoute.of(context)!.settings.arguments as Map;
    // donorName.text = args['name'];
    // donorMobile.text = args['mobile'];
    // selectedGroup = args['group'];
    // final docId = args['id'];

    return Scaffold(
      appBar: AppBar(
        title: Text('Update Donors'),
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
                  updateDonor(docId);
                Navigator.pop(context);
                }
              },
              style: ButtonStyle(
                minimumSize: WidgetStatePropertyAll(Size(double.infinity, 50)),
                backgroundColor: WidgetStatePropertyAll(Colors.red),
              ),
              child: Text(
                'Update',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
