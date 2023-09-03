import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/add_menu.dart';
import 'package:flutter_application_1/screens/menu.dart';

class backnext extends StatefulWidget {
  final String? backvisible;
  final String? nextvisible;
  final Function()? pathback, pathnext;
  backnext({
    Key? key,
    required this.backvisible,
    required this.nextvisible,
    this.pathnext,
    this.pathback,
  }) : super(key: key);

  @override
  State<backnext> createState() => _backnextState();
}

class _backnextState extends State<backnext> {
  @override
  Widget build(BuildContext context) {
    bool backvisible = false;
    bool nextvisible = false;
    if (widget.backvisible == "true") {
      backvisible = true;
    } else {
      backvisible = false;
    }
    if (widget.nextvisible == "true") {
      nextvisible = true;
    } else {
      nextvisible = false;
    }
    ;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Visibility(
          visible: backvisible,
          child: OutlinedButton.icon(
            onPressed: widget.pathback,
            icon: Icon(
              Icons.arrow_back_ios_sharp,
              shadows: <Shadow>[
                Shadow(
                  offset: Offset(0.5, 0.5),
                  blurRadius: 0.5,
                  color: Color.fromARGB(255, 6, 80, 141),
                ),
              ],
            ),
            label: Text(
              'back',
              style: TextStyle(
                color: Color.fromARGB(255, 6, 80, 141),
                shadows: <Shadow>[
                  Shadow(
                    offset: Offset(0.5, 0.5),
                    blurRadius: 0.5,
                    color: Color.fromARGB(255, 6, 80, 141),
                  ),
                ],
              ),
            ),
            style: OutlinedButton.styleFrom(
              primary: Color.fromARGB(255, 6, 80, 141),
              side: BorderSide(color: Colors.transparent),
            ),
          ),
        ),
        Visibility(
          visible: nextvisible,
          child: OutlinedButton.icon(
            onPressed: widget.pathnext,
            label: Row(
              children: [
                Text(
                  'next',
                  style: TextStyle(
                    color: Color.fromARGB(255, 6, 80, 141),
                    shadows: <Shadow>[
                      Shadow(
                        offset: Offset(0.5, 0.5),
                        blurRadius: 0.5,
                        color: Color.fromARGB(255, 6, 80, 141),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.arrow_forward_ios_outlined,
                  shadows: <Shadow>[
                    Shadow(
                      offset: Offset(0.5, 0.5),
                      blurRadius: 0.5,
                      color: Color.fromARGB(255, 6, 80, 141),
                    ),
                  ],
                ),
              ],
            ),
            icon: Icon(
              Icons.arrow_forward_ios_outlined,
              color: Colors.transparent,
            ),
            style: OutlinedButton.styleFrom(
              primary: Color.fromARGB(255, 6, 80, 141),
              side: BorderSide(color: Colors.transparent),
            ),
          ),
        ),
      ],
    );
  }
}
