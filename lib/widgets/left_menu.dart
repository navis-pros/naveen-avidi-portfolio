import 'dart:async';

import 'package:flutter/material.dart';
import 'package:naveen_avidi_portfolio/utilities/method_caller.dart';
import 'package:naveen_avidi_portfolio/widgets/skill_widget.dart';

class LeftMenu extends StatefulWidget {
  final MethodCaller caller;
  const LeftMenu({
    super.key,
    required this.caller,
  });

  @override
  State<LeftMenu> createState() => _LeftMenuState();
}

class _LeftMenuState extends State<LeftMenu> {
  StreamController<double> leftMenuController =
      StreamController<double>.broadcast();
  double screenWidthHalf = -1, leftMenuPosition = -1, leftMenuVisibleSize = 50;

  @override
  void initState() {
    super.initState();
    widget.caller.caller = () {
      if (leftMenuPosition == 0) {
        toggleLeftMenu();
      }
    };
  }

  @override
  void dispose() {
    leftMenuController.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    if (screenWidthHalf == -1) {
      leftMenuPosition = -size.width / 2 + leftMenuVisibleSize;
    }
    screenWidthHalf = size.width / 2;
    return StreamBuilder<double>(
        stream: leftMenuController.stream,
        builder: (context, snapshot) {
          return AnimatedPositioned(
            duration: const Duration(
              milliseconds: 500,
            ),
            left: leftMenuPosition,
            width: screenWidthHalf,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 20,
              ),
              child: DecoratedBox(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.blue,
                      Colors.blueAccent,
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(
                      15,
                    ),
                    bottomRight: Radius.circular(
                      15,
                    ),
                  ),
                ),
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          right: 10,
                          top: 10,
                          bottom: 10,
                        ),
                        child: InkWell(
                          splashFactory: NoSplash.splashFactory,
                          onTap: toggleLeftMenu,
                          child: CircleAvatar(
                            // backgroundColor: Colors.indigo,
                            radius: 16,
                            child: Icon(
                              Icons.person,
                              color: Theme.of(context).listTileTheme.iconColor,
                            ),
                          ),
                        ),
                      ),
                    ),
                    ListTile(
                      title: const Text(
                        '+91 85550 32260',
                        style: TextStyle(
                          fontSize: 14,
                        ),
                        textAlign: TextAlign.end,
                      ),
                      trailing: const Icon(
                        Icons.phone,
                        size: 20,
                      ),
                      dense: true,
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 15,
                      ),
                      onTap: toggleLeftMenu,
                    ),
                    ListTile(
                      title: const Text(
                        'naveen9.avidi@ gmail.com',
                        style: TextStyle(
                          fontSize: 14,
                        ),
                        textAlign: TextAlign.end,
                      ),
                      trailing: const Icon(
                        Icons.email,
                        size: 20,
                      ),
                      dense: true,
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 15,
                      ),
                      onTap: toggleLeftMenu,
                    ),
                    ListTile(
                      title: const Text(
                        'Hyderabad',
                        style: TextStyle(
                          fontSize: 14,
                        ),
                        textAlign: TextAlign.end,
                      ),
                      trailing: const Icon(
                        Icons.location_on,
                        size: 20,
                      ),
                      dense: true,
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 15,
                      ),
                      onTap: toggleLeftMenu,
                    ),
                    Divider(
                      color: Theme.of(context).listTileTheme.iconColor,
                      thickness: .15,
                      indent: 10,
                      endIndent: 10,
                      height: 5,
                    ),
                    const ListTile(
                      contentPadding: EdgeInsets.zero,
                      dense: true,
                      title: Text(
                        'Skills      ',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SkillWidget(
                      onTap: toggleLeftMenu,
                      trailing: FlutterLogo(
                        size: 18,
                        textColor:
                            Theme.of(context).textTheme.bodyMedium!.color!,
                      ),
                      activeDots: 4,
                    ),
                    SkillWidget(
                      onTap: toggleLeftMenu,
                      trailing: Icon(
                        Icons.android,
                        size: 18,
                        color: Theme.of(context).textTheme.bodyMedium!.color,
                      ),
                      activeDots: 3,
                    ),
                    SkillWidget(
                        onTap: toggleLeftMenu,
                        trailing: Text(
                          'JAVA',
                          style: TextStyle(
                            fontSize: 8,
                            color:
                                Theme.of(context).textTheme.bodyMedium!.color,
                          ),
                        ),
                        activeDots: 3),
                    SkillWidget(
                        onTap: toggleLeftMenu,
                        trailing: Text(
                          'XML',
                          style: TextStyle(
                            fontSize: 8,
                            color:
                                Theme.of(context).textTheme.bodyMedium!.color,
                          ),
                        ),
                        activeDots: 3),
                    SkillWidget(
                      onTap: toggleLeftMenu,
                      trailing: Text(
                        'SQL',
                        style: TextStyle(
                          fontSize: 8,
                          color: Theme.of(context).textTheme.bodyMedium!.color,
                        ),
                      ),
                      activeDots: 3,
                    ),
                    SkillWidget(
                        onTap: toggleLeftMenu,
                        trailing: Text(
                          ' Git ',
                          style: TextStyle(
                            fontSize: 8,
                            color:
                                Theme.of(context).textTheme.bodyMedium!.color,
                          ),
                        ),
                        activeDots: 3),
                  ],
                ),
              ),
            ),
          );
        });
  }

  void toggleLeftMenu() {
    leftMenuPosition = leftMenuPosition == 0
        ? leftMenuPosition = -screenWidthHalf + leftMenuVisibleSize
        : 0;
    leftMenuController.sink.add(leftMenuPosition);
  }
}
