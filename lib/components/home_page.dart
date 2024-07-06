
import 'dart:io';
import 'package:core_exam2/utils/var.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          elevation: 6,
          leading: Icon(Icons.menu),
          centerTitle: true,
          title: Text(' details_Page',style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20
          ),),
        ),
        body: SingleChildScrollView(
            child: Column(
              children: [
                ...List.generate(StList.length, (index) =>  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      height: 120,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.blue.shade100,
                          borderRadius: BorderRadiusDirectional.circular(50)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(radius:50,backgroundImage:  (fileImage != null) ? FileImage(fileImage!) : null,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SelectableText('Name : ${StList[index].name}',style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold
                                ),),
                               SelectableText('GRID : ${StList[index].grid}',style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15
                                ),),
                                SelectableText('Std : ${StList[index].std}',style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15
                                ),),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                IconButton(onPressed: () {
                                  StList.add(stmodel(
                                    name: txtName.text,
                                    std: txtStd.text,
                                    grid: txtGrid.text,
                                  ));
                                  Navigator.of(context).pushNamed('/up');
                                }, icon: Icon(Icons.edit,color: Colors.black,size: 30,)),
                                IconButton(onPressed: () {
                                  setState(() {
                                    StList.removeAt(index);
                                  });
                                }, icon: Icon(Icons.delete,color: Colors.black,size: 30,)),
                              ],
                            )

                          ],
                        ),
                      ),
                    ),
                ),)

              ],
            )
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blue,
          onPressed: () {

            Navigator.of(context).pushNamed('/dt');
            StList.add(stmodel(
              name: txtName.text,
              std: txtStd.text,
              grid: txtGrid.text,
            ));
          },child: Icon(Icons.add),
        ),
      ),

    );
  }
}