import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';



class Caroussel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> list = [
      "cardiologie.png",
      "dentiste.png",
      "digest.png",
      "virus.png",
      "ophtamology.png",
      "dermathology.png",
    ];
    return Container(
        child: CarouselSlider(
          options: CarouselOptions(
            height: 200,
            enlargeCenterPage: false,
            autoPlay: true,
            disableCenter: true,
            initialPage: 1,
            viewportFraction: 0.3,
          ),
          items: list
              .map((item) => Column(
            children: [
              Container(
                  margin: EdgeInsets.all(5),
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 4,
                            offset: Offset(2, 1.5),
                            color: Colors.grey),
                        BoxShadow(
                            blurRadius: 4,
                            offset: Offset(2, 1.5),
                            color: Colors.grey)
                      ]),
                  child: Image(
                    image: AssetImage("assets/images/$item"),
                  )),
              Text("Cardiologie",
                  style: GoogleFonts.breeSerif(
                      fontStyle: FontStyle.normal,
                      fontSize: 13,
                      color: Colors.grey[700])),
            ],
          ))
              .toList(),
        ));
  }
}