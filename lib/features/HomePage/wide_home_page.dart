import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rive/rive.dart';
import 'package:thankfulness/App/core/config.dart';
import 'package:thankfulness/features/AppPages/Goals/goals.dart';
import 'package:thankfulness/features/AppPages/Grateful/grateful.dart';
import 'package:thankfulness/features/Auth/pages/user_profile.dart';
import 'package:thankfulness/features/MotivationTips/motivation.dart';
import 'package:thankfulness/models/Widgets/goals/goals_counter.dart';
import 'package:thankfulness/models/Widgets/grateful/grateful_counter.dart';
import 'package:thankfulness/models/Widgets/motivationButton/motivation_button.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class WideHomePage extends StatelessWidget {
  const WideHomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const UserProfile(),
                  ),
                );
              },
              icon: const Icon(
                Icons.person,
              ),
              color: Colors.black,
              iconSize: 40,
            )
          ],
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(25),
            ),
          ),
          title: Center(
            child: Text(
              (AppLocalizations.of(context)!.titleGrateful),
              semanticsLabel: Config.title,
              style: GoogleFonts.pacifico(
                color: const Color.fromARGB(255, 23, 213, 169),
                fontSize: 25,
              ),
            ),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 216, 228, 237),
        drawer: Drawer(
          backgroundColor: const Color.fromARGB(255, 216, 228, 237),
          child: ListView(
            children: const [
              Grateful(),
              Goals(),
            ],
          ),
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            const NameWidgetAchive('Twoja ilość powodów do wdzięczności'),
            const SizedBox(
              height: 10,
            ),
            const GratefulCounter(),
            const NameWidgetGrateful('Twoja liczba celów do realizowania'),
            const SizedBox(
              height: 10,
            ),
            const GoalsCounter(),
            const SizedBox(
              height: 10,
            ),
            const MotivationButton(),
            Expanded(
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => const MotivationPage(),
                    ),
                  );
                },
                child: const RiveAnimation.asset(
                  'assets/a.riv',
                  alignment: Alignment.bottomCenter,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
