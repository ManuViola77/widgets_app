import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {
  static const String name = 'buttons_screen';

  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Buttons')),
      body: const _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_back_ios_new_rounded),
        onPressed: () {
          context.pop();
        },
      ),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView();

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Wrap(
          spacing: 10,
          alignment: WrapAlignment.center,
          children: [
            ElevatedButton(onPressed: () {}, child: const Text('Elevated ')),
            const ElevatedButton(
              onPressed: null,
              child: Text('Elevated Disabled'),
            ),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.access_alarm_rounded),
              label: const Text('Elevated Icon'),
            ),
            FilledButton(onPressed: () {}, child: const Text('Filled')),
            FilledButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.fmd_good_sharp),
              label: const Text('Filled Icon'),
            ),
            OutlinedButton(onPressed: () {}, child: Text('Outlined')),
            OutlinedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.grid_goldenratio_outlined),
              label: const Text('Outlined Icon'),
            ),
            TextButton(onPressed: () {}, child: Text('Text Button')),
            TextButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.grid_goldenratio_outlined),
              label: const Text('Text Button Icon'),
            ),
            CustomButton(
              text: 'Custom Button',
              backgroundColor: colors.primary,
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
            IconButton.filled(onPressed: () {}, icon: const Icon(Icons.add)),
            IconButton.outlined(onPressed: () {}, icon: const Icon(Icons.add)),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.data_saver_off_outlined),
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(colors.primary),
                iconColor: WidgetStatePropertyAll(Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String text;
  final Color backgroundColor;
  final Color textColor;

  const CustomButton({
    super.key,
    required this.text,
    required this.backgroundColor,
    this.textColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Material(
        color: backgroundColor,
        child: InkWell(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(text, style: TextStyle(color: textColor)),
          ),
        ),
      ),
    );
  }
}
