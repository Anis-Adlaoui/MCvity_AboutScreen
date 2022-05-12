import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'main.dart';



class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: MediaQuery.of(context).size.height*0.15,
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
            'About us',
            style: TextStyle(
                color: Colors.black ,
                fontWeight: FontWeight.w500,
                fontSize: 23.0
            )
        ),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            radius: 120,
            backgroundColor: Color(0xffF2F0F0),
            child: IconButton(
                onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => GetStartedScreen()));},
                icon: Icon(CupertinoIcons.arrow_left, color: Colors.black)
            ),
          ),
        ),

        actions: [
          Container(
            width: MediaQuery.of(context).size.width*0.15,
            padding: EdgeInsets.only(right: 20),
            child: const CircleAvatar(
              radius: 120,
              backgroundColor: Colors.black,
            ),
          ),

        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 25, right: 25, bottom: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [




              /*Put images here*/
              Container(

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(/* image 1*/),
                    Container( /* here we put a column which contains 2 pics */
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(),

                          Container(),
                        ],
                      ),
                    )
                  ],
                ),
              ),


              SizedBox(height: 20),

              //title
              const  Align(
                alignment: Alignment.topLeft,
                child:  Text(
                  'About Micro Club',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 25.0),
                ),
              ),


              const SizedBox(height: 5),

              //Description text
              Container(
                child:  const Text(
                  'Description should be written here, typing randhom things is simply dummy text of the printing and typestting industrys standard text of the printning and typestting industry. Lorem ipsum has been the industrys standars',
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16.0),
                ),
              ),


              const SizedBox(height: 10),

              //MC Logo
              Container(
                height: MediaQuery.of(context).size.height*0.1,
                child: Image(
                  image: AssetImage('Assets/MC logo.jpg'),
                ),
              ),

              const SizedBox(height: 5),

              //MC social media
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Row(
                      children: [
                        Container(
                          child: IconButton(
                              onPressed: () {},
                              icon: Image(
                                image: AssetImage("Assets/facebook.png"),
                              )
                          ),
                        ),
                        Container(
                          child: const Text(
                            'Follow MicroClub on Facebook',
                            style:  TextStyle(fontWeight: FontWeight.w500, fontSize: 14.0),
                          ),
                        ),

                      ],
                    ),
                  ),


                  Container(
                    child: Row(
                      children: [
                        Container(
                          child: IconButton(
                              onPressed: () {},
                              icon: Image(
                                image: AssetImage("Assets/instagram.png"),
                              )
                          ),
                        ),
                        Container(
                          child: const Text(
                            'Follow MicroClub on Instagram',
                            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14.0),
                          ),
                        ),

                      ],
                    ),
                  ),



                  Container(
                    child: Row(
                      children: [
                        Container(
                          child: IconButton(
                              onPressed: () {},
                              icon: Image(
                                image: AssetImage("Assets/linkedin.png"),
                              )
                          ),
                        ),
                        Container(
                          child: const Text(
                            'Follow MicroClub on Linkedin',
                            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14.0),
                          ),
                        ),

                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
