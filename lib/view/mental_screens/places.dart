
import 'package:flutter/material.dart';

import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:romio/view/mental_screens/places/sharqia.dart';
import 'package:romio/view/mental_screens/places/alex.dart';
import 'package:romio/view/mental_screens/places/assuot.dart';
import 'package:romio/view/mental_screens/places/aswan.dart';
import 'package:romio/view/mental_screens/places/behira.dart';
import 'package:romio/view/mental_screens/places/bns.dart';
import 'package:romio/view/mental_screens/places/cairo.dart';
import 'package:romio/view/mental_screens/places/dakhalia.dart';
import 'package:romio/view/mental_screens/places/dmiat.dart';
import 'package:romio/view/mental_screens/places/fayoum.dart';
import 'package:romio/view/mental_screens/places/giza.dart';
import 'package:romio/view/mental_screens/places/ismailia.dart';
import 'package:romio/view/mental_screens/places/kafr_elsheikh.dart';
import 'package:romio/view/mental_screens/places/khaliobia.dart';
import 'package:romio/view/mental_screens/places/kharabia.dart';
import 'package:romio/view/mental_screens/places/luxor.dart';
import 'package:romio/view/mental_screens/places/matroh.dart';
import 'package:romio/view/mental_screens/places/minia.dart';
import 'package:romio/view/mental_screens/places/monofya.dart';
import 'package:romio/view/mental_screens/places/north_of_sinai.dart';
import 'package:romio/view/mental_screens/places/portsaid.dart';
import 'package:romio/view/mental_screens/places/qena.dart';
import 'package:romio/view/mental_screens/places/red_sea.dart';
import 'package:romio/view/mental_screens/places/seuz.dart';

import 'package:romio/view/mental_screens/places/sohag.dart';
import 'package:romio/view/mental_screens/places/south_of_sinai.dart';
import 'package:romio/view/mental_screens/places/wadi_el_gdid.dart';

import '../../service/responsive_service.dart';
import '../widgets/custom_container_places.dart';


class Places extends StatefulWidget {
  static String id = 'places';

  const Places ({Key? key}) : super(key: key);

  @override
  State<Places > createState() => _HomeScreenState();
}

class _HomeScreenState extends State<Places > {

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('?????????? ?????????? ????????????'),
      ),

          body: Stack(
            children: [

              SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: SizeConfig.defaultSize * 2,
                      vertical: SizeConfig.defaultSize * 2),
                  child: AnimationLimiter(
                      child: Column(
                        children: AnimationConfiguration.toStaggeredList(
                          duration: const Duration(milliseconds: 600),
                          childAnimationBuilder: (widget) => SlideAnimation(
                            horizontalOffset: 200,
                            child: FadeInAnimation(
                              child: widget,
                            ),
                          ),
                          children: [
                            CustomContainerPlaces(
                              onTap: () {
                                 {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (BuildContext context) {
                                        return const Alex();
                                      }));
                                }
                                // Navigator.pushNamed(
                                //     context, IntroductionToCommunicationScience.id);
                              },
                              text: '????????????????????',
                              clr1:  const Color(0xff0BCC9D),
                              clr2:  const Color(0xff0BCC9D),
                            ),
                            CustomContainerPlaces(
                              onTap: () {
                                {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (BuildContext context) {
                                        return const Assiut();
                                      }));
                                }
                                // Navigator.pushNamed(
                                //     context, IntroductionToCommunicationScience.id);
                              },
                              text: '??????????',
                              clr1: Colors.green.shade900,
                              clr2: Colors.green.shade900,
                            ),
                            CustomContainerPlaces(
                              onTap: () {
                                {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (BuildContext context) {
                                        return const Aswan();
                                      }));
                                }
                                // Navigator.pushNamed(
                                //     context, IntroductionToCommunicationScience.id);
                              },
                              text: '??????????',
                              clr1: Colors.deepPurple,
                              clr2: Colors.deepPurple,
                            ),
                            CustomContainerPlaces(
                              onTap: () {
                                {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (BuildContext context) {
                                        return const Elbehira();
                                      }));
                                }
                                // Navigator.pushNamed(
                                //     context, IntroductionToCommunicationScience.id);
                              },
                              text: '??????????????',
                              clr1: Colors.yellowAccent,
                              clr2: Colors.yellowAccent,
                            ),
                            CustomContainerPlaces(
                              onTap: () {
                                {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (BuildContext context) {
                                        return const BainSuef();
                                      }));
                                }
                                // Navigator.pushNamed(
                                //     context, IntroductionToCommunicationScience.id);
                              },
                              text: '?????? ????????',
                              clr1: Colors.green,
                              clr2: Colors.green,
                            ),
                            CustomContainerPlaces(
                              onTap: () {
                                {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (BuildContext context) {
                                        return const Cairo();
                                      }));
                                }
                                // Navigator.pushNamed(
                                //     context, IntroductionToCommunicationScience.id);
                              },
                              text: '??????????????',
                              clr1: Colors.orange,
                              clr2: Colors.orange,
                            ),
                            CustomContainerPlaces(
                              onTap: () {
                                {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (BuildContext context) {
                                        return const Dakhalia();
                                      }));
                                }
                                // Navigator.pushNamed(
                                //     context, IntroductionToCommunicationScience.id);
                              },
                              text: '????????????????',
                              clr1: Colors.tealAccent,
                              clr2: Colors.tealAccent,
                            ),
                            CustomContainerPlaces(
                                onTap: () {
                                  {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (BuildContext context) {
                                          return const Damiat();
                                        }));
                                  }
                                  // Navigator.pushNamed(
                                  //     context, IntroductionToCommunicationScience.id);
                                },
                              text: '??????????',
                              clr1:  Colors.grey.shade900,
                              clr2:  Colors.grey.shade900,
                            ),
                            CustomContainerPlaces(
                              onTap: () {
                                {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (BuildContext context) {
                                        return const Fayoum();
                                      }));
                                }
                                // Navigator.pushNamed(
                                //     context, IntroductionToCommunicationScience.id);
                              },
                              text: '????????????',
                              clr1: Colors.blueAccent,
                              clr2: Colors.blueAccent,
                            ),
                            CustomContainerPlaces(
                              onTap: () {
                                {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (BuildContext context) {
                                        return const Giza();
                                      }));
                                }
                                // Navigator.pushNamed(
                                //     context, IntroductionToCommunicationScience.id);
                              },
                              text: '????????????',
                              clr1: Colors.pink,
                              clr2: Colors.pink,
                            ),
                            CustomContainerPlaces(
                              onTap: () {
                                {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (BuildContext context) {
                                        return const Ismailia();
                                      }));
                                }
                                // Navigator.pushNamed(
                                //     context, IntroductionToCommunicationScience.id);
                              },
                              text: '??????????????????????',
                              clr1: Colors.purpleAccent,
                              clr2: Colors.purpleAccent,
                            ),
                            CustomContainerPlaces(
                              onTap: () {
                                {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (BuildContext context) {
                                        return const KafrElsheikh();
                                      }));
                                }
                                // Navigator.pushNamed(
                                //     context, IntroductionToCommunicationScience.id);
                              },
                              text: '?????? ??????????',
                              clr1: Colors.brown,
                              clr2: Colors.brown,
                            ),
                            CustomContainerPlaces(
                              onTap: () {
                                {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (BuildContext context) {
                                        return const Khaliobia();
                                      }));
                                }
                                // Navigator.pushNamed(
                                //     context, IntroductionToCommunicationScience.id);
                              },
                              text: '??????????????????',
                              clr1: Colors.orange.shade300,
                              clr2: Colors.orange.shade300,
                            ),
                            CustomContainerPlaces(
                              onTap: () {
                                {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (BuildContext context) {
                                        return const Kharbia();
                                      }));
                                }
                                // Navigator.pushNamed(
                                //     context, IntroductionToCommunicationScience.id);
                              },
                              text: '??????????????',
                              clr1: Colors.lightGreen,
                              clr2: Colors.lightGreen,
                            ),
                            CustomContainerPlaces(
                              onTap: () {
                                {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (BuildContext context) {
                                        return const Luxor();
                                      }));
                                }
                                // Navigator.pushNamed(
                                //     context, IntroductionToCommunicationScience.id);
                              },
                              text: '????????????',
                              clr1: Colors.black,
                              clr2: Colors.black,
                            ),
                            CustomContainerPlaces(
                              onTap: () {
                                {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (BuildContext context) {
                                        return const Matrooh();
                                      }));
                                }
                                // Navigator.pushNamed(
                                //     context, IntroductionToCommunicationScience.id);
                              },
                              text: '???????? ??????????',
                              clr1: Colors.green.shade900,
                              clr2: Colors.green.shade900,
                            ),
                            CustomContainerPlaces(
                              onTap: () {
                                {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (BuildContext context) {
                                        return const Menia();
                                      }));
                                }
                                // Navigator.pushNamed(
                                //     context, IntroductionToCommunicationScience.id);
                              },
                              text: '????????????',
                              clr1: Colors.teal,
                              clr2: Colors.teal,
                            ),
                            CustomContainerPlaces(
                              onTap: () {
                                {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (BuildContext context) {
                                        return const Monofya();
                                      }));
                                }
                                // Navigator.pushNamed(
                                //     context, IntroductionToCommunicationScience.id);
                              },
                              text: '????????????????',
                              clr1: Colors.yellowAccent,
                              clr2: Colors.yellowAccent,
                            ),
                            CustomContainerPlaces(
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (BuildContext context) {
                                      return const PortSaid();
                                    }));
                                // Navigator.pushNamed(
                                //     context, IntroductionToCommunicationScience.id);
                              },
                              text: '??????????????',
                              clr1: Colors.pink.shade800,
                              clr2: Colors.pink.shade800,
                            ),
                            CustomContainerPlaces(
                              onTap: () {
                                {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (BuildContext context) {
                                        return const Qena();
                                      }));
                                }
                                // Navigator.pushNamed(
                                //     context, IntroductionToCommunicationScience.id);
                              },
                              text: '??????',
                              clr1: Colors.blue.shade900,
                              clr2: Colors.blue.shade900,
                            ),
                            CustomContainerPlaces(
                              onTap: () {
                                {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (BuildContext context) {
                                        return const RedSea();
                                      }));
                                }
                                // Navigator.pushNamed(
                                //     context, IntroductionToCommunicationScience.id);
                              },
                              text: '?????????? ????????????',
                              clr1: Colors.tealAccent,
                              clr2: Colors.tealAccent,
                            ),
                            CustomContainerPlaces(
                                onTap: () {
                                  {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (BuildContext context) {
                                          return const Suez();
                                        }));
                                  }
                                  // Navigator.pushNamed(
                                  //     context, IntroductionToCommunicationScience.id);
                                },
                                text: '????????????',
                                clr1:  Colors.amberAccent,
                                clr2:  Colors.amberAccent,
                            ),
                            CustomContainerPlaces(

                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (BuildContext context) {
                                      return const Sharqia();
                                    }));
                                // Navigator.pushNamed(
                                //     context, IntroductionToCommunicationScience.id);
                              },
                              text: '??????????????',
                              clr1: Colors.blueAccent,
                              clr2: Colors.blueAccent,
                            ),
                            CustomContainerPlaces(
                              onTap: () {
                                {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (BuildContext context) {
                                        return const SouthOfSinai();
                                      }));
                                }
                                // Navigator.pushNamed(
                                //     context, IntroductionToCommunicationScience.id);
                              },
                              text: '???????? ??????????',
                              clr1: Colors.deepOrangeAccent,
                              clr2: Colors.deepOrangeAccent,
                            ),
                            CustomContainerPlaces(
                              onTap: () {
                                {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (BuildContext context) {
                                        return const NorthOfSinai();
                                      }));
                                }
                                // Navigator.pushNamed(
                                //     context, IntroductionToCommunicationScience.id);
                              },
                              text: '???????? ??????????',
                              clr1: Colors.lightGreenAccent,
                              clr2: Colors.lightGreenAccent,
                            ),
                            CustomContainerPlaces(
                              onTap: () {
                                {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (BuildContext context) {
                                        return const Sohag();
                                      }));
                                }
                                // Navigator.pushNamed(
                                //     context, IntroductionToCommunicationScience.id);
                              },
                              text: '??????????',
                              clr1: Colors.grey,
                              clr2: Colors.grey,
                            ),
                            CustomContainerPlaces(
                              onTap: () {
                                {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (BuildContext context) {
                                        return const WadiElgdid();
                                      }));
                                }
                                // Navigator.pushNamed(
                                //     context, IntroductionToCommunicationScience.id);
                              },
                              text: '???????????? ????????????',
                              clr1: Colors.blueGrey,
                              clr2: Colors.blueGrey,
                            ),

                          ],
                        ),
                      )),
                ),
              ),
            ],
          )

    );
  }



}