import 'package:flutter/material.dart';

class Calendertile extends StatefulWidget {
  final String week;
  final date;
  final currentindex;
  const Calendertile(
      {super.key,
      required this.week,
      required this.date,
      required this.currentindex});

  @override
  State<Calendertile> createState() => _CalendertileState();
}

class _CalendertileState extends State<Calendertile> {
  var selectIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 85,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10))),
      child: InkWell(
        onTap: () {
          setState(() {
            selectIndex = widget.currentindex;
          });
        },
        child: Card(
          color:
              selectIndex == widget.currentindex ? Colors.black : Colors.amber,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Text(
                  widget.date.toString(),
                  style: TextStyle(
                      color: selectIndex == widget.currentindex
                          ? Colors.amber
                          : Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  widget.week,
                  style: TextStyle(
                      color: selectIndex == widget.currentindex
                          ? Colors.amber
                          : Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
