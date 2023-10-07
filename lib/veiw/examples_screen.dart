import 'package:flame_guardians/app/config/constant.dart';
import 'package:flutter/material.dart';

class ExamplesScreen extends StatelessWidget {
  // final Examples paragraf;
  const ExamplesScreen({
    Key? key,
    // required this.paragraf,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
            'Examples',
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
                      'https://i.pinimg.com/236x/17/21/f4/1721f447fdd05b15543c9736e83eb8b0.jpg'),
                  fit: BoxFit.fill,
                  colorFilter:
                      ColorFilter.mode(Colors.black45, BlendMode.darken))),
        ),
        Container(
          height: double.infinity,
          width: double.infinity,
          margin: EdgeInsets.only(top: context.height * .4),
          padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40), topRight: Radius.circular(40))),
          child: ListView(
              padding: EdgeInsets.zero,
              children: [
             const Expanded(
              child: Text(
                '''Assume the following --> there is populated area that is surrounded by forest and then a 
fire break in:
If the fire was stable in place and affecting the community through harmful gases --> our reaction is take care for those allergic to those gases, and also to ill people who may develop and express harsh side effects.
If the fire was heading to our community: ''',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
                 /////////////////////////
            const Text(
              '1. Surveillance and taking care',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 200,
              width: context.width,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(12),
                ),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    'https://static.wixstatic.com/media/2f6e9b5249a4471a97f4d563af066a68.jpg/v1/fill/w_293,h_194,al_c,q_80,usm_0.66_1.00_0.01,enc_auto/2f6e9b5249a4471a97f4d563af066a68.jpg',

                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Expanded(
              child: Text(
                'First is the surveillance and taking care of allergic people, this action is taken to observe the shape of first era of the wildfire ',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
              ),
            ),
                /////////////////////////
                const Text(
                  '2.Fire dircetion',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 200,
                  width: context.width,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(12),
                    ),
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(
                        'https://c1.wallpaperflare.com/preview/660/279/784/forest-forest-fire-photo-public-domain.jpg',

                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Expanded(
                  child: Text(
                      'If the fire is directly heading towards the community and the bad gases are worse than before --> evacuation for ill and allergic people to nearby community.',
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
                  ),
                ),
                /////////////////////////
                const Text(
                  '3.Fire reach',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 200,
                  width: context.width,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(12),
                    ),
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(
                        'https://swiftmedia.s3.amazonaws.com/mountain.swiftcom.com/images/sites/2/2020/07/22224229/Wildfire-SDN-080120-4-1536x1152.jpg',

                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Expanded(
                  child: Text(
                      'If the fire is too near and approaching --> evacuation and burning of most of the community building so fire found nothing to burn.'
                    ,style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
                  ),
                ),
                /////////////////////////
                const Text(
                  '4.Fire durability',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 200,
                  width: context.width,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(12),
                    ),
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(
                        'https://cdn.vox-cdn.com/thumbor/jI48TRceqhJERjW4fshKCkQuPZk=/0x0:1278x852/920x613/filters:focal(330x326:534x530):format(webp)/cdn.vox-cdn.com/uploads/chorus_image/image/69618540/brady_highway_copy.0.jpg',

                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Expanded(
                  child: Text(
                    'Finally if the fire did not stop --> burn the whole community and evacuate the whole population'

                    ,style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
                  ),
                ),
          ]),
        ),
      ]),
    );
  }
}
