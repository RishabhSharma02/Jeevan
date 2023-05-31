import 'package:flutter/material.dart';
import 'package:flutter_application_1/modals/chips.dart';
import 'package:flutter_application_1/views/Page_3.dart';
import 'package:flutter_application_1/views/Profile.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

import 'Page_2.dart';

class Onboard extends StatefulWidget {
  const Onboard({super.key});

  @override
  State<Onboard> createState() => _OnboardState();
}

class _OnboardState extends State<Onboard> {
  int index = 0;
  final screens = [
    SafeArea(
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
              Padding(
                padding: EdgeInsets.only(right: 125.w, left: 31.w, top: 10.h),
                child: Text(
                  "Hello!",
                  style: GoogleFonts.poppins(
                      fontSize: 16, fontWeight: FontWeight.w600),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 60.0.w, left: 31.w),
                child: Text(
                  "Username",
                  style: GoogleFonts.poppins(
                      fontSize: 20, fontWeight: FontWeight.w600),
                ),
              )
            ]),
            Padding(
              padding: EdgeInsets.only(right: 30.w, top: 10.h),
              child: GestureDetector(
                onTap: () {
                  Get.to(() => Profile());
                },
                child: CircleAvatar(
                  child: Icon(Icons.person),
                ),
              ),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 30.0),
          child: Container(
            child: Row(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 13, top: 12),
                      child: Text(
                        " Get the best \n Medical Advice",
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 22.sp,
                            fontWeight: FontWeight.bold),
                        maxLines: 2,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10, top: 5),
                      child: Text(
                        " Click here for Free chat \n with our 24/7 available \n health expert",
                        textAlign: TextAlign.left,
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500),
                        maxLines: 3,
                      ),
                    )
                  ],
                ),
                Container(
                  height: 151,
                  width: 110,
                  child: Image.asset(
                    "images/doctor.png",
                    fit: BoxFit.cover,
                  ),
                )
              ],
            ),
            height: 151.h,
            width: 325.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: <Color>[
                  Color(0xff40E0D0),
                  Color(0xff6A4AEC),
                ],
                tileMode: TileMode.mirror,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 30.0),
          child: Container(
            child: Row(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 13, top: 12),
                      child: Text(
                        " Get free medicine \n delivery within \n one hour",
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 22.sp,
                            fontWeight: FontWeight.w600),
                        maxLines: 3,
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 130.h,
                  width: 90.56.w,
                  child: Image.asset(
                    "images/delivery.png",
                    fit: BoxFit.cover,
                  ),
                )
              ],
            ),
            height: 151.h,
            width: 325.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: <Color>[
                  Color(0xff40E0D0),
                  Color(0xff6A4AEC),
                ],
                tileMode: TileMode.mirror,
              ),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 17.0.h, left: 27.w),
              child: Text(
                "Shop by category",
                textAlign: TextAlign.left,
                style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 22.sp,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 17.0.h, right: 39.h),
              child: Text(
                "View all",
                textAlign: TextAlign.left,
                style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(top: 40.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Chip1(title: "Most loved"),
              Chip1(title: "Personal care"),
              Chip1(title: "Skin care")
            ],
          ),
        )
      ]),
    ),
    Market(
      postpin: "600127",
    ),
    Cart()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        height: 81.h,
        selectedIndex: index,
        onDestinationSelected: (index) {
          setState(() => this.index = index);
        },
        destinations: [
          NavigationDestination(
              icon: index == 0
                  ? PhosphorIcon(
                      PhosphorIcons.fill.house,
                    )
                  : PhosphorIcon(
                      PhosphorIcons.regular.house,
                    ),
              label: "Home"),
          NavigationDestination(
              icon: index == 1
                  ? PhosphorIcon(
                      PhosphorIcons.fill.shoppingBag,
                    )
                  : PhosphorIcon(
                      PhosphorIcons.regular.shoppingBag,
                    ),
              label: "Marketplace"),
          NavigationDestination(
              icon: index == 2
                  ? PhosphorIcon(
                      PhosphorIcons.fill.shoppingCart,
                    )
                  : PhosphorIcon(
                      PhosphorIcons.regular.shoppingCart,
                    ),
              label: "Cart"),
          NavigationDestination(
              icon: PhosphorIcon(
                PhosphorIcons.regular.robot,
              ),
              label: "Chatbot")
        ],
      ),
      body: screens[index],
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
    );
  }
}
