import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:flutter_sample_design/Getxcontrollers/stockdetail.dart';
import 'package:flutter_sample_design/pages/stockupdatepage.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class StockPage extends StatefulWidget {
  const StockPage({super.key});

  @override
  State<StockPage> createState() => _StockPageState();
}

class _StockPageState extends State<StockPage> {
  var barcodeNumber = TextEditingController();
  Future<void> scanBarcode() async {
    String barcodeScanRes;
    String? result;
    try {
      barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
        '#000000',
        'Cancel',
        true,
        ScanMode.BARCODE,
      );
      print(barcodeScanRes);
    } on PlatformException {
      barcodeScanRes = 'Failed to get platform version.';
    }

    if (!mounted) return;
    setState(() {
      result = barcodeScanRes;
    });
     Get.put(DataController()).getProduct(result!);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(50),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: (){
                      Get.back();
                    },
                    child: Image.asset(
                      "assets/backarrow.png",
                    ),
                  ),
                ],
              ),
            )),
        bottomSheet: InkWell(
          onTap: () {
            if (barcodeNumber.text.isEmpty) {
              scanBarcode();
            } else {
              Get.put(DataController()).getProduct(barcodeNumber.text);
            }
          },
          child: Container(
            margin: const EdgeInsets.only(bottom: 35, left: 25, right: 25),
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Color(0xff159594),
                borderRadius: BorderRadius.circular(10)),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Text(
                      "Scan",
                      style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xff000000)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 22.0),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: const Color(0xff159594)),
                      child: Center(
                        child: Image.asset("assets/bartext.png"),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding: const EdgeInsets.only(top: 25.0),
              child: Text(
                "Stock In",
                style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xff000000)),
              ),
            ),
            Container(
                margin: const EdgeInsets.only(top: 26),
                height: 70,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xffeff9e4),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: barcodeNumber,
                    style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xff000000)),
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Bar Code",
                        hintStyle: GoogleFonts.poppins(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xff000000)),
                        suffixIcon: Padding(
                          padding: EdgeInsets.all(4.0),
                          child: Container(
                            height: 65,
                            width: 65,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7),
                                color: const Color(0xff159594)),
                            child: Center(
                              child: Image.asset(
                                "assets/barchek.png",
                                height: 45,
                                width: 45,
                              ),
                            ),
                          ),
                        )),
                  ),
                )

                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     Padding(
                //       padding: const EdgeInsets.only(left: 16.0),
                //       child: Text(
                //         "Bar Code",
                //         style: GoogleFonts.poppins(
                //             fontSize: 20,
                //             fontWeight: FontWeight.w500,
                //             color: const Color(0xff000000)),
                //       ),
                //     ),

                //   ],
                // )
                ),
          ]),
        ));
  }
}
