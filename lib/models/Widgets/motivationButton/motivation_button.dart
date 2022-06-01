import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thankfulness/App/core/enums.dart';

import 'package:thankfulness/models/Widgets/motivationButton/cubit/motivationbutton_cubit.dart';
import 'package:thankfulness/repositories/motivation_repositories.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MotivationButton extends StatefulWidget {
  const MotivationButton({
    Key? key,
  }) : super(key: key);

  @override
  State<MotivationButton> createState() => _MotivationButtonState();
}

class _MotivationButtonState extends State<MotivationButton> {
  var names = false;
  var background = false;
  var colorStyle = false;
  bool myState = true;

  @override
  Widget build(BuildContext context) {
    final random = Random();
    final randomInt = random.nextInt(3);
    return InkWell(
      onTap: () {
        setState(
          () {
            names = true;
            background = true;
            colorStyle = true;
            myState = !myState;
          },
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: background
              ? const Color.fromARGB(255, 23, 213, 169)
              : Colors.yellow,
          borderRadius: const BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.all(10),
        child: BlocProvider(
          create: (context) => MotivationbuttonCubit(
            MotivationRepositories(),
          )..start(),
          child: BlocBuilder<MotivationbuttonCubit, MotivationbuttonState>(
            builder: (context, state) {
              if (state.status == Status.error) {
                final errorMessage =
                    state.errorMessage ?? 'Wystąpił nieoczekiwany problem ';
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(errorMessage),
                    backgroundColor: Colors.amber,
                  ),
                );
              }
              return Expanded(
                child: Column(
                  children: [
                    if (randomInt == 0)
                      Text(
                        myState == true
                            ? (AppLocalizations.of(context)!
                                .motivationalQuoteFromATeddyBear)
                            : (AppLocalizations.of(context)!.citations1),
                        style: colorStyle
                            ? GoogleFonts.pacifico(
                                color: Colors.white,
                                fontSize: 23,
                              )
                            : GoogleFonts.pacifico(
                                color: const Color.fromARGB(255, 23, 213, 169),
                                fontSize: 23),
                      ),
                    if (randomInt == 1)
                      Text(
                        myState == true
                            ? (AppLocalizations.of(context)!
                                .motivationalQuoteFromATeddyBear)
                            : (AppLocalizations.of(context)!.citations2),
                        style: colorStyle
                            ? GoogleFonts.pacifico(
                                color: Colors.white,
                                fontSize: 23,
                              )
                            : GoogleFonts.pacifico(
                                color: const Color.fromARGB(255, 23, 213, 169),
                                fontSize: 23),
                      ),
                    if (randomInt == 2)
                      Text(
                        myState == true
                            ? (AppLocalizations.of(context)!
                                .motivationalQuoteFromATeddyBear)
                            : (AppLocalizations.of(context)!.citations3),
                        style: colorStyle
                            ? GoogleFonts.pacifico(
                                color: Colors.white,
                                fontSize: 23,
                              )
                            : GoogleFonts.pacifico(
                                color: const Color.fromARGB(255, 23, 213, 169),
                                fontSize: 23),
                      ),
                    if (randomInt == 3)
                      Text(
                        myState == true
                            ? (AppLocalizations.of(context)!
                                .motivationalQuoteFromATeddyBear)
                            : (AppLocalizations.of(context)!.citations4),
                        style: colorStyle
                            ? GoogleFonts.pacifico(
                                color: Colors.white,
                                fontSize: 23,
                              )
                            : GoogleFonts.pacifico(
                                color: const Color.fromARGB(255, 23, 213, 169),
                                fontSize: 23),
                      ),
                    if (randomInt == 4)
                      Text(
                        myState == true
                            ? (AppLocalizations.of(context)!
                                .motivationalQuoteFromATeddyBear)
                            : (AppLocalizations.of(context)!.citations5),
                        style: colorStyle
                            ? GoogleFonts.pacifico(
                                color: Colors.white,
                                fontSize: 23,
                              )
                            : GoogleFonts.pacifico(
                                color: const Color.fromARGB(255, 23, 213, 169),
                                fontSize: 23),
                      ),
                    if (randomInt == 5)
                      Text(
                        myState == true
                            ? (AppLocalizations.of(context)!
                                .motivationalQuoteFromATeddyBear)
                            : (AppLocalizations.of(context)!.citations6),
                        style: colorStyle
                            ? GoogleFonts.pacifico(
                                color: Colors.white,
                                fontSize: 23,
                              )
                            : GoogleFonts.pacifico(
                                color: const Color.fromARGB(255, 23, 213, 169),
                                fontSize: 23),
                      ),
                    if (randomInt == 6)
                      Text(
                        myState == true
                            ? (AppLocalizations.of(context)!
                                .motivationalQuoteFromATeddyBear)
                            : (AppLocalizations.of(context)!.citations7),
                        style: colorStyle
                            ? GoogleFonts.pacifico(
                                color: Colors.white,
                                fontSize: 23,
                              )
                            : GoogleFonts.pacifico(
                                color: const Color.fromARGB(255, 23, 213, 169),
                                fontSize: 23),
                      ),
                    if (randomInt == 7)
                      Text(
                        myState == true
                            ? (AppLocalizations.of(context)!
                                .motivationalQuoteFromATeddyBear)
                            : (AppLocalizations.of(context)!.citations8),
                        style: colorStyle
                            ? GoogleFonts.pacifico(
                                color: Colors.white,
                                fontSize: 23,
                              )
                            : GoogleFonts.pacifico(
                                color: const Color.fromARGB(255, 23, 213, 169),
                                fontSize: 23),
                      ),
                    if (randomInt == 8)
                      Text(
                        myState == true
                            ? (AppLocalizations.of(context)!
                                .motivationalQuoteFromATeddyBear)
                            : (AppLocalizations.of(context)!.citations9),
                        style: colorStyle
                            ? GoogleFonts.pacifico(
                                color: Colors.white,
                                fontSize: 23,
                              )
                            : GoogleFonts.pacifico(
                                color: const Color.fromARGB(255, 23, 213, 169),
                                fontSize: 23),
                      ),
                    if (randomInt == 9)
                      Text(
                        myState == true
                            ? (AppLocalizations.of(context)!
                                .motivationalQuoteFromATeddyBear)
                            : (AppLocalizations.of(context)!.citations10),
                        style: colorStyle
                            ? GoogleFonts.pacifico(
                                color: Colors.white,
                                fontSize: 23,
                              )
                            : GoogleFonts.pacifico(
                                color: const Color.fromARGB(255, 23, 213, 169),
                                fontSize: 23),
                      ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
