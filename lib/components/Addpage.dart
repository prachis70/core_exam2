import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import '../utils/var.dart';
import 'home_page.dart';

class Addpage extends StatefulWidget {
  const Addpage({super.key});
  @override
  State<Addpage> createState() => _AddpageState();
}
class _AddpageState extends State<Addpage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: Icon(Icons.details),
        centerTitle: true,
        title: Text(
          'Add student details',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: fileImage == null
                    ? const CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage('assets/imgpro.png'),
                      )
                    : CircleAvatar(
                        radius: 80,
                        backgroundImage: FileImage(fileImage!),
                      ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                      onPressed: () async {
                        XFile? xFileImage = await imagePicker.pickImage(
                            source: ImageSource.camera);

                        setState(() {
                          fileImage = File(xFileImage!.path);
                        });
                      },
                      icon: Icon(
                        Icons.camera_alt,
                        size: 40,
                      )),
                  IconButton(
                      onPressed: () async {
                        XFile? xFileImage = await imagePicker.pickImage(
                            source: ImageSource.gallery);

                        setState(() {
                          fileImage = File(xFileImage!.path);
                        });
                      },
                      icon: Icon(
                        Icons.photo,
                        size: 40,
                      ))
                ],
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: txtName,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  label: Text(
                    'Enter student name',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                keyboardType: TextInputType.numberWithOptions(),
                controller: txtStd,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  label: Text(
                    'Enter student std',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                keyboardType: TextInputType.numberWithOptions(),
                controller: txtGrid,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  label: Text(
                    'Enter student grid',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Center(
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(Colors.blue)),
                    onPressed: () {
                      Navigator.of(context).pushNamed('/');
                    },
                    child: Text(
                      'Submit',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    )),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
