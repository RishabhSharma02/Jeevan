import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  bool isempty = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Container(
            color: Color.fromARGB(255, 116, 251, 242),
            height: 200.h,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 9.w, top: 10.h),
                      child: PhosphorIcon(
                        PhosphorIcons.bold.caretLeft,
                        size: 29,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 9.w, top: 10.h),
                      child: Text(
                        "Cart",
                        textAlign: TextAlign.left,
                        style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 29.sp,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(left: 25.w, right: 25.w, top: 50.h),
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: PhosphorIcon(
                        PhosphorIcons.regular.magnifyingGlass,
                      ),
                      hintText: "Search for medicines",
                      hintStyle: GoogleFonts.poppins(fontSize: 15.sp),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          if (isempty)
            Container(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 30.h),
                    child: Image.asset("images/empty.png"),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10.h),
                    child: Text(
                      "Your Medicine / Healthcare cart is empty!",
                      textAlign: TextAlign.left,
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
