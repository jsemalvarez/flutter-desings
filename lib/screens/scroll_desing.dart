import 'package:flutter/material.dart';

class ScrollScreen extends StatelessWidget {
  const ScrollScreen({super.key});

  final boxDecoration = const BoxDecoration(
    gradient:
      LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        stops: [0.5,0.5],
        colors: [
          Color(0xff5EE8C5), 
          Color(0xff30BAD6)
        ]
      )
  );

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      // backgroundColor: const Color(0xff30BAD6),
      body: Container(
        decoration: boxDecoration,
        child: PageView(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          children: const [
            PageOne(), 
            PageTwo()
          ]
        ),
      ),
    );
  }
}

class PageOne extends StatelessWidget {
  const PageOne({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: const [Background(), MainContent()]);
  }
}

class MainContent extends StatelessWidget {
  const MainContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
        fontWeight: FontWeight.bold, fontSize: 70, color: Colors.white);
    return SafeArea(
      bottom: false,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            '11°',
            style: textStyle,
          ),
          const Text(
            'Miercoles',
            style: textStyle,
          ),
          Expanded(child: Container()),
          const Icon(
            Icons.keyboard_arrow_down_rounded,
            color: Colors.white,
            size: 90,
          ),
        ],
      ),
    );
  }
}

class Background extends StatelessWidget {
  const Background({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff30BAD6),
      height: double.infinity,
      alignment: Alignment.topCenter,
      child: const Image(image: AssetImage('assets/scroll-1.png')),
    );
  }
}

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff30BAD6),
      child: Center(
          child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
            backgroundColor: const Color(0xff0098FA),
            shape: const StadiumBorder()),
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 50),
          child: Text(
            'Bienvenidos',
            style: TextStyle(
                color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
      )),
    );
  }
}
