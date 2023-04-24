import 'package:flutter/material.dart';
class FancyContainer extends StatefulWidget {

  const FancyContainer({
    Key? key,
    this.height=120,
    this.width,
    this.color1,
    this.color2,
    this.title,
    this.textColor,
    this.subtitle,
    this.subtitleColor,
  }): super(key:key);

  final double? width;
  final double? height;
  final Color? color1;
  final Color? color2;
  final String? title;
  final Color? textColor;
  final String? subtitle;
  final Color? subtitleColor;


  @override
  State<FancyContainer> createState() => _FancyContainerState();
}

class _FancyContainerState extends State<FancyContainer> {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width??MediaQuery.of(context).size.width*0.9,
      height: widget.height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        gradient: LinearGradient(
            colors: [widget.color1??Colors.red,widget.color2??Colors.green],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(widget.title??"",style: TextStyle(color: widget.textColor,fontSize: 15),),
          Text(widget.subtitle??"",style: TextStyle(color: widget.subtitleColor ,fontSize: 15),),
        ],
      ),
    );
  }
}
