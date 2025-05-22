import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  static const String name = 'snackbar_screen';

  const SnackbarScreen({super.key});

  void showCustomSnackBar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Text('Hola Mundo'),
        action: SnackBarAction(label: 'OK', onPressed: () {}),
        duration: Duration(seconds: 2), // se auto oculta
      ),
    );
  }

  void openDialog(BuildContext context) {
    showDialog(
      barrierDismissible: false, // no se puede cerrar con tap fuera
      context: context,
      builder:
          (context) => AlertDialog(
            title: const Text('Estas seguro?'),
            content: Text(
              'Non sunt velit officia irure amet pariatur do esse consequat esse id. Labore aliqua eiusmod culpa consequat. Incididunt aute sunt enim minim tempor occaecat.',
            ),
            actions: [
              TextButton(
                onPressed: () => context.pop(),
                child: const Text('Cancelar'),
              ),
              FilledButton(
                onPressed: () {
                  context.pop();
                },
                child: const Text('Aceptar'),
              ),
            ],
          ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Snackbars y Dialogos')),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton(
              onPressed: () {
                showAboutDialog(
                  context: context,
                  children: [
                    const Text(
                      'Nostrud do elit labore nulla commodo Lorem dolor dolore velit in consectetur ex reprehenderit ea. Eu esse dolor anim culpa cupidatat velit occaecat officia nulla fugiat. Amet commodo labore Lorem ex sit in magna ex.',
                    ),
                  ],
                );
              },
              child: Text('Licencias Usadas'),
            ),
            FilledButton(
              onPressed: () => openDialog(context),
              child: Text('Mostrar Dialogo'),
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => showCustomSnackBar(context),
        label: const Text('Mostrar Snackbar'),
        icon: const Icon(Icons.remove_red_eye_outlined),
      ),
    );
  }
}
