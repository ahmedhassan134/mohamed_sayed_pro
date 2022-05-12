import 'package:flutter/material.dart';
import 'package:romio/service/responsive_service.dart';
import 'package:url_launcher/url_launcher.dart';
class FloatingWidget extends StatelessWidget {
  const FloatingWidget({Key? key,required this.urll,required this.heroTag}) : super(key: key);
  final String heroTag;

  final String urll;
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      heroTag: heroTag,
      backgroundColor: Colors.red,
      onPressed: () async {
        var  url = urll;
        // var urrr= LaunchUrl('https://www.youtube.com');
        if (await canLaunch(url)) {
          await launch(url, forceWebView: false);
        } else {
          throw 'Could not launch $url';
        }
      },
      child: Icon(Icons.video_call,color: Colors.white,size: SizeConfig.defaultSize* 4,),
    );
  }


}
