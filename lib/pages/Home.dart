import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../components/CarousselCategory.dart';
import '../widgets/searchBar.dart';
import 'package:get/get.dart';



class HomeApp extends StatelessWidget {
  const HomeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        toolbarHeight: 60,
        title: Text("Hi, Nebel",
            style: GoogleFonts.lobster(fontSize: 45, color: Colors.grey[900])),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 10, top: 1),
            width: 60,
            decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.grey),
                image: DecorationImage(
                    image: AssetImage('assets/images/doctor.jpg'),
                    fit: BoxFit.cover)),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Text(
                    "Adulte 23 ans",
                    style: GoogleFonts.lobster(
                        fontSize: 15, color: Colors.grey[600]),
                  )
                ],
              ),
            ),
            SizedBox(height: 40),
            Container(
                height: 60,
                width: Get.width,
                margin: EdgeInsets.only(
                  left: Get.width / 20,
                  right: Get.width / 20,
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white60,
                        offset: Offset(0, 2),
                        blurRadius: 4,
                      ),
                      BoxShadow(
                        color: Colors.black12,
                        offset: Offset(1, 2),
                        blurRadius: 20,
                      ),
                    ]),
                child: SearchBar()),
            SizedBox(
              height: 40,
            ),
            Container(
                padding: EdgeInsets.only(left: Get.width / 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "See doctors",
                      style: GoogleFonts.breeSerif(
                          fontStyle: FontStyle.normal,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                )),
            Services(),
            Container(
              padding: EdgeInsets.only(top: 20, left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Catégories",
                    style: GoogleFonts.breeSerif(
                        fontStyle: FontStyle.normal,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                    onPressed: () => {},
                    child: Text("See all",
                        style: GoogleFonts.breeSerif(
                            fontStyle: FontStyle.normal,
                            color: Colors.grey[700])),
                    style: ButtonStyle(
                        foregroundColor:
                        MaterialStateProperty.all(Colors.white)),
                  )
                ],
              ),
            ),
            Caroussel()
          ]),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.deepPurple[200],
        elevation: 4,

        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.blueGrey[600],
        currentIndex: 0,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Accueil',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book_outlined),
            label: 'Carnet',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'School',
          ),
        ],
      ),
    );
  }
}

class Services extends StatelessWidget {
  const Services({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(Get.width / 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Card(
            elevation: 2,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(30))),
            color: Colors.white,
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  SizedBox(
                    height: 20,
                    child: Text(
                      "Consultation",
                      style: GoogleFonts.lato(
                          color: Colors.deepPurple,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                  SizedBox(
                    child: Image(
                      image: AssetImage('assets/images/report.png'),
                      width: Get.width / 2.6,
                      fit: BoxFit.scaleDown,
                    ),
                  )
                ],
              ),
            ),
          ),
          Card(
            elevation: 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(30)),
            ),
            color: Colors.deepPurple,
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  SizedBox(
                    height: 20,
                    child: Text(
                      "Doctor",
                      style: GoogleFonts.lato(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                  SizedBox(
                    child: Image(
                      image: AssetImage('assets/images/consulting.png'),
                      width: Get.width / 2.6,
                      fit: BoxFit.scaleDown,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
