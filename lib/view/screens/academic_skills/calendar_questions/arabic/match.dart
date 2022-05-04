import 'package:flutter/material.dart';

class ArabicMatching extends StatelessWidget {
  const ArabicMatching({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('التوصيل'),

      ),
      body: Stack(
        children: const <Widget>[

          Lines(),
          IgnorePointer(
            child: Boxes(),
          ),
        ],
      ),
    );
  }
}
class Boxes extends StatelessWidget {
  const Boxes({Key ?key}) : super(key: key);

  @override
  build(context) => ListView.builder(
    shrinkWrap: true,
  

    itemBuilder: (context,index){
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            margin:const EdgeInsets.all(10),
            color: Colors.grey ,
            width: 50,
            height: 200,
            child: const Text('one'),
          ),


          Container(
            padding: const EdgeInsets.all(10),
            color: Colors.green,
            width: 200,
            height: 200,
            child: const Text('one'),
          ),
        ],

      );
    },
    itemCount: 10,


  );
}

class Lines extends StatefulWidget {
  const Lines({Key ?key}) : super(key: key);

  @override
  createState() => _LinesState();
}

class _LinesState extends State<Lines> {
  Offset  ?start;
  Offset ? end;

  @override
  build(_) => GestureDetector(
    onTap: null,
    onPanStart: (details) {

      setState(() {
        start = details.localPosition;
        end=null;
      });
    },
    onPanUpdate: (details) {
      setState(() {
        end = details.localPosition;

      });
    },
    child: CustomPaint(
      size: Size.infinite,
      painter: LinesPainter(start, end),
    ),
  );
}

class LinesPainter extends CustomPainter {
  Offset ?  start, end;

  LinesPainter(this.start, this.end);

  @override
  void paint(Canvas canvas, Size size) {
    if (start==null||end == null) return ;
    canvas.drawLine(
        start!,
        end!,
        Paint()
          ..strokeWidth = 4
          ..color = Colors.black);

  }


  @override
  bool shouldRepaint(LinesPainter oldDelegate) {
    return oldDelegate.start != start || oldDelegate.end != end;
  }
}




