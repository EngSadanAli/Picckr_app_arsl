import 'package:flutter/material.dart';
import '../../Utils/appColor.dart';
import '../customtext.dart';
class CustomDropDown<T> extends StatelessWidget {

  final List<T> items;
   String hintText;
   Widget? prefixIcon;
   TextStyle textstyle;
   Widget? widget;
  final void Function(T?) onChanged;
   CustomDropDown({Key? key,

     required this.textstyle,
     required this.items,
     required this.hintText,
      this.prefixIcon,
     required this.onChanged,


   }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(color: AppColor.white,
        borderRadius: BorderRadius.circular(10), // Adjust the radius as needed
        border: Border.all(
          color: Colors.white, // Border color
          width: 1.0, // Border width
        ),
      ),
      child: DropdownButtonFormField<T>(
          decoration: InputDecoration(contentPadding: EdgeInsets.all(10),
border: InputBorder.none,
              hintStyle: textstyle ,
              prefixIcon: prefixIcon,

              hintText: hintText),
          items: items.map((T item) {
            return DropdownMenuItem<T>(

              enabled: true,
              value: item,
              child: CustomText(
                textStyle: textstyle, title: item.toString(),),
            );
          }).toList(),
          onChanged: onChanged,validator: (value) {
        if (value == null ) {
          return 'Please select an option';
        }
        return null;
      },
          ),
    );
  }
}
