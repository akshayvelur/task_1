import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_1/core/presentation/utils/campaign_list.dart';

class Champaign extends StatelessWidget {
  const Champaign({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              "Total ${camp.length}",
              style: GoogleFonts.roboto(
                color: const Color.fromARGB(255, 98, 97, 97),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: camp.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: 60,
                          child: ListTile(
                            leading: ClipRRect(
                              borderRadius: BorderRadius.circular(150),
                              child: Image.asset(
                                camp[index]['img'],
                                width: 48,
                                height: 48,
                                fit: BoxFit.cover,
                              ),
                            ),
                            title: Text(camp[index]['title'],style: GoogleFonts.roboto(fontWeight: FontWeight.w500),),
                            subtitle: Text(
                              camp[index]['subtitle'],
                              style: GoogleFonts.roboto(fontSize: 12),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 290,
                          top: 18,
                          child: Container(
                            height: 19,
                            width: 90,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color:index<3? const Color.fromARGB(56, 255, 210, 7): const Color.fromARGB(56, 255, 7, 7),
                            ),
                            child: Center(
                              child: Text(
                                camp[index]['time'],
                                style: GoogleFonts.roboto(
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                  color: const Color.fromARGB(123, 0, 0, 0),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 80),
                      child: Divider(),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
