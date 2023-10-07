import 'package:flame_guardians/app/config/constant.dart';
import 'package:flame_guardians/app/config/theme.dart';
import 'package:flame_guardians/veiw/guid_page.dart';
import 'package:flame_guardians/veiw/senarios_screen.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  _launchURL() async {
    Uri _url = Uri.parse('https://firms.modaps.eosdis.nasa.gov/map/#d:today;@0.0,0.0,3.0z');
    if (await launchUrl(_url)) {
      await launchUrl(_url);
    } else {
      throw 'Could not launch $_url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        iconTheme: IconThemeData(color: AppColors.whiteColor),
        elevation: 0,
        backgroundColor: Colors.transparent,

      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 40,
                    child: Icon(
                      Icons.person,
                      size: 50,
                    ),
                  ),
                  SizedBox(width: 10,),
                  Text(
                    'Adam Eldaly',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,

                    ),
                  )
                ],
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (builder) => const HomeScreen()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.map),
              title: const Text('Guids'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (builder) => const GuidePage()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.account_tree_outlined),
              title: const Text('Scenarios'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (builder) => const SenariosScreen()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.info),
              title: const Text('More Info'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (builder) => const GuidePage()),
                );
              },
            ),
          ],
        ),
      ),
      body: Container(
        height: context.height,
        width: context.width,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    'https://www.nationalobserver.com/sites/nationalobserver.com/files/styles/article_header_xl/public/img/2019/09/18/1221px-amazon_fire_satellite_image.png?itok=guPo2zNM'),
                fit: BoxFit.cover,
                colorFilter:
                ColorFilter.mode(Colors.black45, BlendMode.darken))),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
              'Welcome',
                  style:  TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: AppColors.whiteColor
                  ),
                ),
                const SizedBox(height: 10,),
                Text(
                  'Fire guardians',
                  style:  TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: AppColors.whiteColor
                  ),
                ),
                const SizedBox(height: 15,),
                Text(
                   'Here you will find information about wildfires, the causes of their occurrence,and how to face them ',
                  style:  TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: AppColors.whiteColor
                  ),
                ),
                 const Spacer(),
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: ElevatedButton(
                      onPressed: _launchURL,
                      style:
                      ElevatedButton.styleFrom(backgroundColor: AppColors.whiteColor),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Firms',
                            style: TextStyle(
                                color: AppColors.blackColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                          Icon(
                            Icons.arrow_right_alt,
                            size: 40,
                            color: AppColors.blackColor,
                          )
                        ],
                      )),
                )
            ],
            ),
          ),
        ),
      ),

    );
  }
}
