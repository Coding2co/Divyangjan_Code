
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String title;
  final Function () onChanged;
  final double btnWidth;
  final double btnHeight;
  final double btnBorderRadius;
  final Color btnColor;
  final Color? btnTextColor;
  final FontWeight? btnTextFontWeight;
  final double? btnTextFontSize;
  final double? btnTxtSpace;
  const ButtonWidget({super.key,required this.btnWidth,required this.btnBorderRadius,required this.btnColor,required this.onChanged,required this.title,this.btnTextColor,this.btnTextFontWeight,this.btnTextFontSize,required this.btnHeight,this.btnTxtSpace});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width:btnWidth,
      height: 50,
      child: ElevatedButton(onPressed: (){
        onChanged;
      }, 
      style:ButtonStyle(
                // padding: MaterialStateProperty.all<EdgeInsets>(
                //    const EdgeInsets.symmetric(horizontal: 130.0, vertical: 20.0)),
                backgroundColor: MaterialStateProperty.all<Color>(btnColor),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(btnBorderRadius),
                        // side: const BorderSide(color: null, width:2.5),
                        //  side: const BorderSide(color: null, width:2.5),
                       ),),
              ),
      child:Text(title,style: TextStyle(color :btnTextColor ,
      fontSize: btnTextFontSize,fontWeight: btnTextFontWeight,letterSpacing: btnTxtSpace),),
      ),
    );
  }
}