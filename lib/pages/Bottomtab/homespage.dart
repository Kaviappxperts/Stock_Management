import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:google_fonts/google_fonts.dart';

class HomeDetailpage extends StatefulWidget {
   final Function(int)? onTabChanged;
  const HomeDetailpage({super.key,  
   this.onTabChanged}
  );

  @override
  State<HomeDetailpage> createState() => _HomeDetailpageState();
}

class _HomeDetailpageState extends State<HomeDetailpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset("assets/drawer.png"),
              Padding(
                padding: const EdgeInsets.only(top: 25.0),
                child: Text(
                  "Welcome Back !",
                  style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xff000000)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 4.0),
                child: Text(
                  "Mohan Kumar",
                  style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xff888888)),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 26),
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xffeff9e4),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        labelText: "Search here...",
                        labelStyle: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xff5D5D5D)),
                        suffixIcon: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Container(
                            height: 36,
                            width: 36,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7),
                                color: const Color(0xff159594)),
                            child: Center(
                              child: Image.asset("assets/search.png"),
                            ),
                          ),
                        )),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25.0),
                child: Text(
                  "Services",
                  style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xff000000)),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height / 2.9,
                width: double.infinity,
                margin: const EdgeInsets.only(top: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width/2.4,
                      decoration: BoxDecoration(
                          color: const Color(0XFFBADAA3),
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 150,
                              width: 160,
                              decoration: BoxDecoration(
                                  color: const Color(0XFFFFFFFF),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Center(
                                child: Image.asset("assets/stock 1.png"),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 16.0),
                              child: Text(
                                "Services",
                                style: GoogleFonts.poppins(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    color: const Color(0xff000000)),
                              ),
                            ),
                            InkWell(
                              onTap: (){
                                widget.onTabChanged!.call(1);
                              },
                              child: Center(
                                child: Container(
                                  margin: EdgeInsets.only(top: 10),
                                  height: 33,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(
                                          color: Color(0xff159594), width: 1)),
                                  child: Center(
                                    child: Text(
                                      "View Stock",
                                      style: GoogleFonts.poppins(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: const Color(0xffffffff)),
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width:  MediaQuery.of(context).size.width/2.4,
                     // height: MediaQuery.of(context).size.height / 3,
                      decoration: BoxDecoration(
                          color: const Color(0XFFAA94D8),
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                               height: 150,
                              width: 160,
                              decoration: BoxDecoration(
                                  color: const Color(0XFFFFFFFF),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Center(
                                child: Image.asset("assets/box 1.png"),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 16.0),
                              child: Text(
                                "Product",
                                style: GoogleFonts.poppins(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    color: const Color(0xff000000)),
                              ),
                            ),
                            Center(
                              child: Container(
                                margin: EdgeInsets.only(top: 10),
                                height: 33,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(
                                        color: Color(0xff159594), width: 1)),
                                child: Center(
                                  child: Text(
                                    "View Product",
                                    style: GoogleFonts.poppins(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: const Color(0xffffffff)),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.only(top: 35.0),
              //   child: Text(
              //     "Services",
              //     style: GoogleFonts.poppins(
              //         fontSize: 20,
              //         fontWeight: FontWeight.w600,
              //         color: const Color(0xff000000)),
              //   ),
              // ),
              // Container(
              //   margin: const EdgeInsets.only(top:16),
              //   width: double.infinity,
              //   height: MediaQuery.of(context).size.height/5,
              //   decoration: BoxDecoration(
              //     color: Color(0xff159594),
              //     borderRadius: BorderRadius.circular(10)
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
