import 'package:flutter/material.dart';
import 'package:pr_3_3/Screen/Webpage.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        '/' : (context) => const HomePage(),
        'Webpage' : (context) => const Webpage(),
      },
    ),
  );
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("OTT Platforms",style: TextStyle(
            fontSize: 25,
            color: Colors.white,
            fontWeight: FontWeight.w600),),
        leading: Image.asset("assets/images/images__2_-removebg-preview (1).png"),
        backgroundColor: Colors.black,
        toolbarHeight: 80,
        elevation: 0,
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 15,),
              Row(
                children: [
                  SizedBox(width: 15,),
                  Text("Popular",style: TextStyle(color: Colors.grey,fontSize: 17,fontWeight: FontWeight.w600),),
                  SizedBox(width: 15,),
                  Text("Movies",style: TextStyle(color: Colors.grey.shade800,fontSize: 17,fontWeight: FontWeight.w600),),
                  SizedBox(width: 15,),
                  Text("Shows",style: TextStyle(color: Colors.grey.shade800,fontSize: 17,fontWeight: FontWeight.w600),),
                  SizedBox(width: 15,),
                  Text("Search",style: TextStyle(color: Colors.grey.shade800,fontSize: 17,fontWeight: FontWeight.w600),),
                ],
              ),
              SizedBox(height: 20,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(width: 15,),
                    InkWell(
                      onTap: (){
                        setState((){
                          Navigator.push(
                            context, MaterialPageRoute(
                            builder: (context) => Webpage(),
                            settings: RouteSettings(arguments: "https://www.hotstar.com/in"),),);
                        });
                      },
                      child: Container(
                        height: 180,
                        width: 250,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child:  Image.asset("assets/images/hotstar.png",
                        fit: BoxFit.fill),
                      ),
                    ),
                    SizedBox(width: 20,),
                    InkWell(
                      onTap: (){
                        setState((){
                          Navigator.push(
                            context, MaterialPageRoute(
                            builder: (context) => Webpage(),
                            settings: RouteSettings(arguments: "https://www.mxplayer.in/"),),);
                        });
                      },
                      child: Container(
                        height: 180,
                        width: 240,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child:  Image.asset("assets/images/mx.png",
                            fit: BoxFit.fill),
                      ),
                    ),
                    SizedBox(width: 15,),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(width: 15,),
                    InkWell(
                      onTap: (){
                        setState((){
                          Navigator.push(
                            context, MaterialPageRoute(
                            builder: (context) => Webpage(),
                            settings: RouteSettings(arguments: "https://www.netflix.com/in/"),),);
                        });
                      },
                      child: Container(
                        height: 180,
                        width: 230,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child:  Image.asset("assets/images/net.jfif",
                            fit: BoxFit.fill),
                      ),
                    ),
                    SizedBox(width: 30,),
                    InkWell(
                      onTap: (){
                        setState((){
                          Navigator.push(
                            context, MaterialPageRoute(
                            builder: (context) => Webpage(),
                            settings: RouteSettings(arguments: "https://www.primevideo.com/?ref_=dvm_pds_amz_in_as_s_gm_16&gclid=CjwKCAiAqaWdBhAvEiwAGAQlthcCn1z_n4QuuVfvTodH_Z7KITfLHtUd-LSsGt75xXARHRM5UDlNPxoCcZAQAvD_BwE"),),);
                        });
                      },
                      child: Container(
                        height: 180,
                        width: 300,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child:  Image.asset("assets/images/primevideo-seo-logo.png",
                            fit: BoxFit.fill),
                      ),
                    ),
                    SizedBox(width: 15,),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(width: 15,),
                    InkWell(
                      onTap: (){
                        setState((){
                          Navigator.push(
                            context, MaterialPageRoute(
                            builder: (context) => Webpage(),
                            settings: RouteSettings(arguments: "https://www.sonyliv.com/custompage/shows-2240"),),);
                        });
                      },
                      child: Container(
                        height: 180,
                        width: 250,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child:  Image.asset("assets/images/sony.png",
                            fit: BoxFit.fill),
                      ),
                    ),
                    SizedBox(width: 20,),
                    InkWell(
                      onTap: (){
                        setState((){
                          Navigator.push(
                            context, MaterialPageRoute(
                            builder: (context) => Webpage(),
                            settings: RouteSettings(arguments: "https://www.youtube.com/"),),);
                        });
                      },
                      child: Container(
                        height: 180,
                        width: 250,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child:  Image.asset("assets/images/you.png",
                            fit: BoxFit.fill),
                      ),
                    ),
                    SizedBox(width: 15,),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(width: 15,),
                    InkWell(
                      onTap: (){
                        setState((){
                          Navigator.push(
                            context, MaterialPageRoute(
                            builder: (context) => Webpage(),
                            settings: RouteSettings(arguments: "https://www.zee5.com/"),),);
                        });
                      },
                      child: Container(
                        height: 180,
                        width: 240,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child:  Image.asset("assets/images/zee5.jfif",
                            fit: BoxFit.fill),
                      ),
                    ),
                    SizedBox(width: 20,),
                    InkWell(
                      onTap: (){
                        setState((){
                          Navigator.push(
                            context, MaterialPageRoute(
                            builder: (context) => Webpage(),
                            settings: RouteSettings(arguments: "https://www.altbalaji.com/"),),);
                        });
                      },
                      child: Container(
                        height: 180,
                        width: 250,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child:  Image.asset("assets/images/alt.png",
                            fit: BoxFit.fill),
                      ),
                    ),
                    SizedBox(width: 15,),
                  ],
                ),
              ),
              SizedBox(height: 15,),
            ],
          ),
        ),
      ),
      backgroundColor:  Colors.black26,
    );
  }
}
