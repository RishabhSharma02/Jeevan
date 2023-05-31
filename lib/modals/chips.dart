import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Chip1 extends StatelessWidget {
  const Chip1({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 100.h,
          width: 100.w,
          decoration: BoxDecoration(
              color: Color(0xffB7F4F0),
              borderRadius: BorderRadius.circular(10)),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 5),
          child: Text(
            title,
            maxLines: 2,
            textAlign: TextAlign.left,
            style: GoogleFonts.poppins(
                color: Colors.black,
                fontSize: 15.sp,
                fontWeight: FontWeight.w500),
          ),
        ),
      ],
    );
  }
}
