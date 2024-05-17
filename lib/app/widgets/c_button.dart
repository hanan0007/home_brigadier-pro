import 'package:flutter/material.dart';

class CButton extends StatelessWidget {
  final String text;
  final Function()? ontab;
  final double? btnwidth;
  final double? btnheight;
  final Color? txtcolor;
  final Color? bgcolor;
  final double? fontsize;
  final double? borderradius;
  final bool shadow;
  final Gradient? gradient;
  final FontWeight? fontWeight;

  const CButton(
      {super.key,
      required this.text,
      this.btnwidth,
      this.btnheight,
      this.txtcolor,
      this.bgcolor,
      this.fontsize,
      this.ontab,
      this.borderradius,
      this.shadow = false,
      this.fontWeight,
      this.gradient});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Container(
      decoration: BoxDecoration(
          gradient: gradient,
          boxShadow: [
            if (shadow)
              const BoxShadow(
                  blurRadius: 3,
                  // color: AppColor.secondary.withOpacity(0.3),
                  spreadRadius: 1,
                  offset: Offset(0, 2))
          ],
          // color: bgcolor ?? AppColor.secondary,
          borderRadius: BorderRadius.circular(borderradius ?? 8)),
      width: btnwidth ?? width,
      height: btnheight ?? height * 0.07,
      child: Material(
          color: Colors.transparent,
          child: ElevatedButton(onPressed: ontab, child: Text(text))
          //  InkWell(
          //   onTap: ontab,
          //   child: Center(
          //     child: Text(
          //       text,

          //       // change text color
          //       style: TextStyle(
          //           fontWeight: fontWeight ?? FontWeight.normal,
          //           color: txtcolor ?? Colors.white,
          //           fontSize: fontsize ?? width * 0.04),
          //     ),
          //   ),
          // ),
          ),
    );
  }
}
