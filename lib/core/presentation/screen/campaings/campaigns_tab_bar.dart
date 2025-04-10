import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_1/core/presentation/screen/campaings/campaign.dart';

class Compaigns extends StatelessWidget {
  const Compaigns({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Number of tabs
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          title: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              'Campaigns',
              style: GoogleFonts.roboto(fontWeight: FontWeight.bold),
            ),
          ),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(50),
            child: TabBar(padding: EdgeInsets.all(5),
              dividerColor: Colors.white,
              labelStyle: GoogleFonts.roboto(),
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.grey[200],
              ),
              labelColor: Colors.black,
              tabs: [
                Container(
                  height: 20,
                  width: 170,
                  alignment: Alignment.center,
                  child: Text("Invites"),
                ),
                  Container(
                  height: 20,
                  width: 150,
                  alignment: Alignment.center,
                  child: Text("Ongoing"),
                ),
                  Container(
                  height: 30,
                  width: 150,
                  alignment: Alignment.center,
                  child: Text("History"),
                ),
               
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: [
            Champaign(),
            Center(child: Text("Ongoing Campaigns")),
            Center(child: Text("Campaign History")),
          ],
        ),
      ),
    );
  }
}
