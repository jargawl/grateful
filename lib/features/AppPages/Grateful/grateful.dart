import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thankfulness/App/core/config.dart';
import 'package:thankfulness/features/AppPages/Grateful/cubit/grateful_cubit.dart';

import 'package:thankfulness/repositories/grateful_repositories.dart';

import '../../../App/core/enums.dart';

class Grateful extends StatelessWidget {
  const Grateful({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) => GratefulPage(),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.all(10),
        child: Center(
          child: Text(
            Config.grateful,
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

class GratefulPage extends StatelessWidget {
  GratefulPage({Key? key}) : super(key: key);

  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(40),
          ),
        ),
        title: Text(
          'Moje powody do wdzięczności',
          style: GoogleFonts.pacifico(
            color: const Color.fromARGB(255, 47, 184, 129),
            fontSize: 20,
          ),
        ),
      ),
      floatingActionButton: BlocProvider(
        create: (context) => GratefulCubit(
          GratefulRepositories(),
        ),
        child: BlocBuilder<GratefulCubit, GratefulState>(
          builder: (context, state) {
            return FloatingActionButton(
              onPressed: () {
                context.read<GratefulCubit>().add(
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
        create: (context) => GratefulCubit(
          GratefulRepositories(),
        )..start(),
        child: BlocBuilder<GratefulCubit, GratefulState>(
          builder: (context, state) {
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
            return ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    controller: controller,
                  ),
                ),
                for (final itemModel in itemModels) ...[
                  BlocBuilder<GratefulCubit, GratefulState>(
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
                          context.read<GratefulCubit>().delete(
                                document: itemModel,
                                id: itemModel.id,
                              );
                        },
                        child: NameWidget(
                          itemModel.name,
                        ),
                      );
                    },
                  ),
                ],
              ],
            );
          },
        ),
      ),
    );
  }
}

class NameWidget extends StatelessWidget {
  const NameWidget(
    this.name, {
    Key? key,
  }) : super(key: key);
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 23, 213, 169),
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(10),
      child: Center(
        child: Text(
          (name),
          style: GoogleFonts.pacifico(
            color: Colors.white,
            fontSize: 23,
          ),
        ),
      ),
    );
  }
}
