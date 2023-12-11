import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:minggu_14/model/color_model.dart';

class DataView extends StatelessWidget {
  const DataView({super.key, required this.data});

  final ColorModel data;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.lightGreen,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(16)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(
              width: 120,
              height: 64,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(8),
                color: Color(
                  int.parse(
                    data.color.replaceAll('#', '0xff'),
                  ),
                ),
              ),
            ),
          ),
          Row(
            children: [
              Text(
                'ID : ',
                style: GoogleFonts.poppins(
                    fontSize: 14, fontWeight: FontWeight.w600),
              ),
              Text(
                data.id.toString(),
                style: GoogleFonts.poppins(
                    fontSize: 14, fontWeight: FontWeight.w400),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                'Name : ',
                style: GoogleFonts.poppins(
                    fontSize: 14, fontWeight: FontWeight.w600),
              ),
              Text(
                data.name,
                style: GoogleFonts.poppins(
                    fontSize: 14, fontWeight: FontWeight.w400),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                'Year : ',
                style: GoogleFonts.poppins(
                    fontSize: 14, fontWeight: FontWeight.w600),
              ),
              Text(
                data.year.toString(),
                style: GoogleFonts.poppins(
                    fontSize: 14, fontWeight: FontWeight.w400),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                'Color : ',
                style: GoogleFonts.poppins(
                    fontSize: 14, fontWeight: FontWeight.w600),
              ),
              Text(
                data.color,
                style: GoogleFonts.poppins(
                    fontSize: 14, fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                width: 4,
              ),
            ],
          ),
          Row(
            children: [
              Text(
                'Pantone Value : ',
                style: GoogleFonts.poppins(
                    fontSize: 14, fontWeight: FontWeight.w600),
              ),
              Text(
                data.pantoneValue,
                style: GoogleFonts.poppins(
                    fontSize: 14, fontWeight: FontWeight.w400),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
