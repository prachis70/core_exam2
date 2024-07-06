import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:image_picker/image_picker.dart';
TextEditingController txtName=TextEditingController();
TextEditingController txtGrid=TextEditingController();
TextEditingController txtStd=TextEditingController();
List StList=[];
File? fileImage;
ImagePicker imagePicker = ImagePicker();
class stmodel{
  String? name,grid,std;
  File? img;
  File? fileimage;
  stmodel({this.std,this.grid,this.img,this.name});
}