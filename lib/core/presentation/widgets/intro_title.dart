import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroTitle extends StatelessWidget {
  const IntroTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return     Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text("Find Friends & Get Inspiration",style: GoogleFonts.roboto(fontSize: 20,fontWeight: FontWeight.w700),),
                ),
               Padding(
              padding: const EdgeInsets.only(top: 12),
              child: Text("Connect with fellow creators and get inspired",style: GoogleFonts.roboto(fontSize: 16,),),
            ),
             Text("by what they are upto!",style: GoogleFonts.roboto(fontSize: 16,),),],
            ) ;
  }
}