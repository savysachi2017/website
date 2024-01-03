import 'package:flutter/material.dart';
import 'package:se_website/utils/colors.dart';
import 'package:se_website/utils/widgets/navbar_item.dart';

import 'main.dart';

class Desktop extends StatefulWidget {
  const Desktop({super.key});

  @override
  State<Desktop> createState() => _DesktopState();
}

class _DesktopState extends State<Desktop> {

  bool isHover1 = false;
  bool isHover2 = false;

  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: AppColors.theme['primaryColor'],
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(100.0),
          child: AppBar(
            backgroundColor: Colors.transparent,
            flexibleSpace: Container(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 5),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/images/logos/se_logo.png",
                            fit: BoxFit.cover,
                            width:
                                mq.width * 0.1 > 200.0 ? mq.width * 0.2 : 200.0,
                            height:
                                mq.height * 0.1 > 200.0 ? mq.height * 0.2 : 200.0,
                          ),
                          SizedBox(
                            width: mq.width * 0.01,
                          ),
                          Navbaritem(onPressed: () {}, optionName: "Home"),
                          Navbaritem(onPressed: () {}, optionName: "About"),
                          Navbaritem(onPressed: () {}, optionName: "Products"),
                          Navbaritem(onPressed: () {}, optionName: "Facility"),
                          Navbaritem(onPressed: () {}, optionName: "Contact"),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 5),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Row(
                            children: [
                              MouseRegion(
                                onExit: (_) {
                                  setState(() {
                                    isHover1 = false;
                                  });
                                },
                                onEnter: (_) {
                                  setState(() {
                                    isHover1 = true;
                                  });
                                },
                                child: IconButton(
                                  onPressed: (){

                                  },
                                  icon: Icon(Icons.file_download_outlined,size: 32,),color:isHover1 ? AppColors.theme['highlightColor'] : AppColors.theme['secondaryColor'] ,
                                ),
                              ),
                              Text("Download Brochure",style: TextStyle(color: AppColors.theme['secondaryColor']),),
                            ],
                          ),
                          SizedBox(width: mq.width*0.02,),
                          MouseRegion(
                            onExit: (_) {
                              setState(() {
                                isHover2 = false;
                              });
                            },
                            onEnter: (_) {
                              setState(() {
                                isHover2 = true;
                              });
                            },
                            child: Container(
                              constraints:BoxConstraints(
                                maxHeight: 50,
                                maxWidth: 150,
                                minWidth: 110
                              ),
                              width: mq.width*0.09,
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ButtonStyle(
                                  minimumSize: MaterialStateProperty.all(Size(50, 50)),
                                  backgroundColor: isHover2 ? MaterialStateProperty.all(AppColors.theme['highlightColor']):  MaterialStateProperty.all(AppColors.theme['secondaryColor']),
                                ),
                                child: Text(
                                  "inquiry",
                                  style: TextStyle(fontSize: 16, color: isHover2 ?AppColors.theme['secondaryColor'] :Colors.black),
                                ),
                              ),
                            ),
                          ),


                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
