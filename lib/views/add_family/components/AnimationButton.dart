import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnimatedButton extends AnimatedWidget {
  final AnimationController _controller;
   AnimatedButton({
    required this.icon, required this.text ,
    required AnimationController controller,
  })  : _controller = controller,
        super(listenable: controller);
  String text;
  Icon icon ;
  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: 1 - _controller.value,
      child: Container(
        height: 50,
        width: 180,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            boxShadow: const [
              BoxShadow(
                color: Color(0x80000000),
                blurRadius: 10.0,
                offset: Offset(0.0, 2.0),
              ),
            ],
            gradient: LinearGradient(
              colors: [
                Color(0xff00e6dc),
                Color(0xff00ffb9),
              ],
            )),
        child: Center(
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            this.icon,
            SizedBox(
              width: 10,
            ),
            Text(this.text,
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff000028),
                )),
          ]),
        ),
      ),
    );
  }
}
