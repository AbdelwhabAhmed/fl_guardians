import 'package:flame_guardians/app/config/theme.dart';
import 'package:flame_guardians/veiw/examples_screen.dart';
import 'package:flutter/material.dart';

class SenariosScreen extends StatelessWidget {
  // final Examples paragraf;

  const SenariosScreen({
    super.key,
    // required this.paragraf
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: (const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          )),
        ),
        title: const Center(
          child: Text(
            'Scenarios',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 26, color: Colors.white),
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Stack(children: [
        Container(
          height: 400,
          width: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      'https://i.pinimg.com/236x/7d/84/94/7d849466ac9958baf835aad73cdda3bb.jpg'),
                  fit: BoxFit.fill,
                  colorFilter:
                      ColorFilter.mode(Colors.black45, BlendMode.darken))),
        ),
        const Center(
          child: Text(
            'Senarios',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 24, color: Colors.white),
          ),
        ),
        Container(
          height: double.infinity,
          width: double.infinity,
          margin: EdgeInsets.only(top: size.height * .4),
          padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40), topRight: Radius.circular(40))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Purpose of this section:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Expanded(
                child: Text(
                  'this section is considered as a tutorial for realistic scenarios in the wild fire scene, this will depend on what each government decide according to their dataset of their disasters, also there is “guardians board” which dedicate many instructions provided by rescue squads.',
                  style: TextStyle(
                      fontWeight: FontWeight.w400, fontSize: 18),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (builder) => const ExamplesScreen(),
                        ),
                      );
                    },
                    style:
                        ElevatedButton.styleFrom(backgroundColor: AppColors.amberColor),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Examples',
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
        )
      ]),
    );
  }
}
