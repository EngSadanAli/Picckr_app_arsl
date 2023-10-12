import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
class ProfileScreenProvider with ChangeNotifier{

  final picker= ImagePicker();
  XFile? image;
  XFile? get Image=> image;
  Future pickFileFromCamera(BuildContext context)async{

    final pickedfile=await picker.pickImage(source: ImageSource.camera);
    if(pickedfile != null){
      image=XFile(pickedfile.path);
      notifyListeners();Navigator.pop(context);
      print("Path are");
      print(image);
    }

  }
  Future pickFileFromGallery(BuildContext context)async{

    final pickedfile=await picker.pickImage(source: ImageSource.gallery);
    if(pickedfile != null){
      image=XFile(pickedfile.path);
      Navigator.pop(context);
      notifyListeners();
      print("Path are");
      print(image);
    }



  }
  void showDialogeBox(BuildContext context){
    showDialog(context: context, builder: (context) {
      return Dialog(
        child: Container(
          height: 150.h,width: 100.w,
          child: Column(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            TextButton(onPressed: (){pickFileFromCamera(context);}, child: Text("Camera")),
            Divider(),
            TextButton(onPressed: (){pickFileFromGallery(context);}, child: Text("Gallery")),
          ],),
        ),
      );
    },);
  }








}