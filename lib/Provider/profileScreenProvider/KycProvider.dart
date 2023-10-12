import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
class KycProvider with ChangeNotifier{

  final picker= ImagePicker();
  XFile? frontimage;
  XFile? get FrontImage=> frontimage;
  Future pickFileFromCamera(BuildContext context)async{

    final pickedfileFront=await picker.pickImage(source: ImageSource.camera);
    if(pickedfileFront != null){
      frontimage=XFile(pickedfileFront.path);
      notifyListeners();Navigator.pop(context);
      print("Path are");
      print(frontimage);
    }

  }

  final backPicker=ImagePicker();
  XFile? backImage;
  XFile? get BackImage=>backImage;
  Future pickFilebackCamera(BuildContext context)async{

    final pickedfileback=await picker.pickImage(source: ImageSource.camera);
    if(pickedfileback != null){
      backImage=XFile(pickedfileback.path);
      notifyListeners();Navigator.pop(context);
      print("Path are");
      print(backImage);
    }

  }
  Future pickFilebackCameragallery(BuildContext context)async{

    final pickedfileback=await picker.pickImage(source: ImageSource.gallery);
    if(pickedfileback != null){
      backImage=XFile(pickedfileback.path);
      notifyListeners();Navigator.pop(context);
      print("Path are");
      print(backImage);
    }

  }

  void clearFrontImage() {
    frontimage = null;
    notifyListeners();
  }

  void clearBackImage() {
    backImage = null;
    notifyListeners();
  }

  Future pickFileFromGallery(BuildContext context)async{

    final pickedfile=await picker.pickImage(source: ImageSource.gallery);
    if(pickedfile != null){
      frontimage=XFile(pickedfile.path);
      Navigator.pop(context);
      notifyListeners();
      print("Path are");
      print(frontimage);
    }



  }
  void showDialogeBoxfront(BuildContext context) {
    showDialog(context: context, builder: (context) {
      return Dialog(
        child: Container(
          height: 150.h, width: 100.w,
          child: Column(crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(onPressed: () {
                pickFileFromCamera(context);
              }, child: Text("Camera")),
              Divider(),
              TextButton(onPressed: () {
                pickFileFromGallery(context);
              }, child: Text("Gallery")),
            ],),
        ),
      );
    },);


  }

  void showDialogeback(BuildContext context) {
    showDialog(context: context, builder: (context) {
      return Dialog(
        child: Container(
          height: 150.h, width: 100.w,
          child: Column(crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(onPressed: () {
                pickFilebackCamera(context);
              }, child: Text("Camera")),
              Divider(),
              TextButton(onPressed: () {
                pickFilebackCameragallery(context);
              }, child: Text("Gallery")),
            ],),
        ),
      );
    },);
  }



}