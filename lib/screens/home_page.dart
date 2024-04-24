import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:naveen_avidi_portfolio/providers/theme_provider.dart';
import 'package:naveen_avidi_portfolio/utilities/curve_path.dart';
import 'package:naveen_avidi_portfolio/utilities/method_caller.dart';
import 'package:naveen_avidi_portfolio/widgets/left_menu.dart';
import 'package:naveen_avidi_portfolio/widgets/theme_widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  StreamController<double> leftMenuController =
      StreamController<double>.broadcast();

  Color titleColor = Colors.white, contentColor = Colors.indigo;
  MethodCaller caller = MethodCaller();

  @override
  Widget build(BuildContext context) {
    if (context.watch<ThemeProvider>().state == ThemeMode.light) {
      titleColor = Colors.white;
      contentColor = Colors.indigo;
    } else {
      contentColor = Colors.white70;
      titleColor = Colors.grey.shade100;
    }

    return SafeArea(
        child: Scaffold(
      body: Stack(
        children: [
          LayoutBuilder(
            builder: (p0, p1) {
              return ClipPath(
                clipper: CurvePath(),
                child: const ColoredBox(
                  color: Colors.indigo,
                  child: SizedBox.expand(),
                ),
              );
            },
          ),
          InkWell(
            splashFactory: NoSplash.splashFactory,
            onTap: () {
              if (caller.caller != null) {
                caller.caller!();
              }
            },
            child: ListView(
              shrinkWrap: true,
              padding: const EdgeInsets.only(
                top: 170,
                left: 65,
              ),
              children: [
                Text(
                  'Experience',
                  style: TextStyle(
                      color: contentColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
                Divider(
                  height: 15,
                  thickness: .8,
                  color: contentColor,
                ),
                Text(
                  'Flutter Developer @ Nooor Technologies Pvt Ltd.\nHyderabad, Dec 2021 - Present.',
                  style: TextStyle(
                    color: contentColor,
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                RichText(
                  text: TextSpan(
                      text:
                          '\nMind Map (Project as a module for Android, iOS and Web):',
                      style: TextStyle(
                        color: contentColor,
                        fontSize: 12,
                        decoration: TextDecoration.underline,
                      ),
                      children: [
                        TextSpan(
                          text:
                              '\n\n* A widget/view of data that represented as a Mindmap structure (nodes with connection).'
                              '\n* Attaching media like images,audios,videos & docs to the nodes from device or web URLs.'
                              '\n* Widgets/Tools: Interactive Viewer, Stream Builders, Custom Painters, ClipRRect, GetX, Riverpod, etc.',
                          style: TextStyle(
                            color: contentColor,
                            fontSize: 12,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ]),
                ),
                RichText(
                  text: TextSpan(
                      text:
                          '\nExercise (Project as a module for Android, iOS and Web):',
                      style: TextStyle(
                        color: contentColor,
                        fontSize: 12,
                        decoration: TextDecoration.underline,
                      ),
                      children: [
                        TextSpan(
                          text:
                              '\n\n* Creating the exercise from teacher side with instructions (text or media) and export to the drive/cloud and student to download and complete the same.'
                              '\n* Widgets/Tools: Stream Builders, Re-Orderable List, Http, GraphQL, Riverpod, etc.',
                          style: TextStyle(
                            color: contentColor,
                            fontSize: 12,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ]),
                ),
                RichText(
                  text: TextSpan(
                      text:
                          '\nUser Profile Drawer (Project as a dependency for other web project):',
                      style: TextStyle(
                        color: contentColor,
                        fontSize: 12,
                        decoration: TextDecoration.underline,
                      ),
                      children: [
                        TextSpan(
                          text:
                              '\n\n* Created the drawer with user details and menu items.'
                              '\n* Saving the user preferences in shared preferences and updating the UI according to it.'
                              '\n* Widgets/Tools: Stream Builders, Transition Animations, Https, GraphQL, Riverpod, etc.',
                          style: TextStyle(
                            color: contentColor,
                            fontSize: 12,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ]),
                ),
                RichText(
                  text: TextSpan(
                      text:
                          '\nResources (Project as a dependency for other web project):',
                      style: TextStyle(
                        color: contentColor,
                        fontSize: 12,
                        decoration: TextDecoration.underline,
                      ),
                      children: [
                        TextSpan(
                          text:
                              '\n\n* Created a section wise media folders (Image, Audio, Videos & Drawing) widget/view with functionality.'
                              '\n* Showing preview in a separate screen with navigation.'
                              '\n* Widgets/Tools: List View, Stream Builder, Video Player. Isar Database, Riverpod, etc.',
                          style: TextStyle(
                            color: contentColor,
                            fontSize: 12,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ]),
                ),
                RichText(
                  text: TextSpan(
                      text:
                          '\nQuiz (Project as a module for Android, iOS and Web):',
                      style: TextStyle(
                        color: contentColor,
                        fontSize: 12,
                        decoration: TextDecoration.underline,
                      ),
                      children: [
                        TextSpan(
                          text:
                              '\n\n* Created Quiz widget/view with functionality.'
                              '\n* User can add, remove or modify questions (widgets) like Fill the blank, Single Choice, Multi Choice or Sort and export to other user to answer those questions and submit.'
                              '\n* Widget/Tools: List View, Stream Builder, Animations, Riverpod, etc.',
                          style: TextStyle(
                            color: contentColor,
                            fontSize: 12,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ]),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 20,
                  ),
                  child: Text(
                    'Assistant Accountant @ Navodaya Packing Industries.\nHyderabad, Nov 2017 to Nov 2021.',
                    style: TextStyle(
                      color: contentColor,
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                RichText(
                  text: TextSpan(
                    text:
                        '\n*Maintaining Accounting Books (Sales, Purchase, Bank, Cash) i.e. Arranging them in a proper day wise manner.'
                        '\n* Creating and/or modifying day wise vouchers in Tally ERP 9 software.'
                        '\n* Creating excel and word reports/statements according to the company\'s need.'
                        '\n* Managing payments and receipts if needed.'
                        '\n* Communicating with customers through email using MS Outlook when needed.',
                    style: TextStyle(
                      color: contentColor,
                      fontSize: 12,
                      decoration: TextDecoration.none,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 50,
              bottom: 50,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                    top: 20,
                    right: 8,
                    bottom: 5,
                  ),
                  child: Text(
                    'Naveen Avidi',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: titleColor,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                  ),
                  child: Text(
                    'Flutter & Android\nDeveloper',
                    style: TextStyle(
                      fontSize: 15,
                      color: titleColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
          LeftMenu(
            caller: caller,
          ),
          const Positioned(
            right: 5,
            top: 5,
            child: ThemeWidget(),
          ),
        ],
      ),
    ));
  }
}
