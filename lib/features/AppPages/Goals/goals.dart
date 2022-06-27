import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thankfulness/App/core/config.dart';
import 'package:thankfulness/App/core/enums.dart';
import 'package:thankfulness/data/remote_data_sources/goals_remote_data_source.dart';
import 'package:thankfulness/repositories/goals_repositories.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../../models/Widgets/name/name_widget.dart';
import 'cubit/goals_cubit.dart';

class Goals extends StatelessWidget {
  const Goals({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) => GoalsPage(),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.all(10),
        child: Center(
          child: Text(
            AppLocalizations.of(context)!.myGoals,
            semanticsLabel: Config.goals,
            style: GoogleFonts.pacifico(
              color: Colors.white,
              fontSize: 30,
            ),
          ),
        ),
        color: const Color.fromARGB(255, 23, 213, 169),
      ),
    );
  }
}

class GoalsPage extends StatelessWidget {
  GoalsPage({Key? key}) : super(key: key);

  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(40),
          ),
        ),
        title: Text(
          (AppLocalizations.of(context)!.myGoalsToBeAchieved),
          style: GoogleFonts.pacifico(
            color: const Color.fromARGB(255, 23, 213, 169),
            fontSize: 25,
          ),
        ),
        centerTitle: true,
      ),
      floatingActionButton: BlocProvider(
        create: (context) => GoalsCubit(
          GoalsRepositories(
            GoalsRemoteDataSource(),
          ),
        ),
        child: BlocBuilder<GoalsCubit, GoalsState>(
          builder: (context, state) {
            return FloatingActionButton(
              onPressed: () {
                context.read<GoalsCubit>().add(
                      name: controller.text,
                    );
                controller.clear();
              },
              child: const Icon(
                Icons.add,
                color: Color.fromARGB(255, 47, 184, 129),
              ),
            );
          },
        ),
      ),
      body: BlocProvider(
        create: (context) => GoalsCubit(
          GoalsRepositories(
            GoalsRemoteDataSource(),
          ),
        )..start(),
        child: BlocBuilder<GoalsCubit, GoalsState>(builder: (context, state) {
          if (state.status == Status.error) {
            final errorMessage =
                state.errorMessage ?? 'Wystąpił nieoczekiwany błąd';
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text(errorMessage),
              backgroundColor: Colors.amber,
            ));
          }

          if (state.status == Status.loading) {
            return const Center(child: CircularProgressIndicator());
          }
          final itemModels = state.documents;

          return Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  'https://i.pinimg.com/originals/68/be/38/68be3817af3f1073e658aed3c2b82e88.jpg',
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    color: const Color.fromARGB(255, 233, 227, 213),
                    child: TextField(
                      controller: controller,
                      decoration: InputDecoration(
                        hintStyle: GoogleFonts.pacifico(),
                        hintText: (AppLocalizations.of(context)!.enterGoals),
                        border: const OutlineInputBorder(),
                      ),
                    ),
                  ),
                ),
                for (final itemModel in itemModels) ...[
                  BlocBuilder<GoalsCubit, GoalsState>(
                    builder: (context, state) {
                      return Dismissible(
                        key: ValueKey(itemModel.id),
                        background: const DecoratedBox(
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding: EdgeInsets.only(
                                right: 32,
                              ),
                              child: Icon(
                                Icons.delete,
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: Colors.red,
                          ),
                        ),
                        confirmDismiss: (direction) async {
                          return direction == DismissDirection.endToStart;
                        },
                        onDismissed: (_) {
                          context.read<GoalsCubit>().delete(
                                document: itemModel,
                                id: itemModel.id,
                              );
                        },
                        child: NameWidget(itemModel.name),
                      );
                    },
                  ),
                ],
              ],
            ),
          );
        }),
      ),
    );
  }
}
