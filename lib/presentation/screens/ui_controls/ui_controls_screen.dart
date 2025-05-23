import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {
  static const String name = 'ui_controls_screen';

  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('UI Controls')),
      body: _UiControlsView(),
    );
  }
}

class _UiControlsView extends StatefulWidget {
  const _UiControlsView();

  @override
  State<_UiControlsView> createState() => _UiControlsViewState();
}

enum Transportation { car, plane, boat, bicycle, motorbike, train, other }

class _UiControlsViewState extends State<_UiControlsView> {
  bool isDeveloperMode = true;
  Transportation selectedTransportation = Transportation.car;
  bool wantsBreakfast = false;
  bool wantsLunch = false;
  bool wantsDinner = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
          title: const Text('Developer mode'),
          subtitle: const Text('Controles adicionales'),
          value: isDeveloperMode,
          onChanged: (value) {
            isDeveloperMode = !isDeveloperMode;
            setState(() {});
          },
        ),

        ExpansionTile(
          title: const Text('Vehiculo de transporte'),
          subtitle: Text('$selectedTransportation'),
          children: [
            RadioListTile(
              title: const Text('Car'),
              subtitle: const Text('Viajar en auto'),
              value: Transportation.car,
              groupValue: selectedTransportation,
              onChanged:
                  (value) => setState(() {
                    selectedTransportation = Transportation.car;
                  }),
            ),
            RadioListTile(
              title: const Text('Plane'),
              subtitle: const Text('Viajar en avión'),
              value: Transportation.plane,
              groupValue: selectedTransportation,
              onChanged:
                  (value) => setState(() {
                    selectedTransportation = Transportation.plane;
                  }),
            ),
            RadioListTile(
              title: const Text('Boat'),
              subtitle: const Text('Viajar en barco'),
              value: Transportation.boat,
              groupValue: selectedTransportation,
              onChanged:
                  (value) => setState(() {
                    selectedTransportation = Transportation.boat;
                  }),
            ),
            RadioListTile(
              title: const Text('Bicycle'),
              subtitle: const Text('Viajar en bicicleta'),
              value: Transportation.bicycle,
              groupValue: selectedTransportation,
              onChanged:
                  (value) => setState(() {
                    selectedTransportation = Transportation.bicycle;
                  }),
            ),
            RadioListTile(
              title: const Text('Motorbike'),
              subtitle: const Text('Viajar en moto'),
              value: Transportation.motorbike,
              groupValue: selectedTransportation,
              onChanged:
                  (value) => setState(() {
                    selectedTransportation = Transportation.motorbike;
                  }),
            ),
            RadioListTile(
              title: const Text('Train'),
              value: Transportation.train,
              groupValue: selectedTransportation,
              onChanged:
                  (value) => setState(() {
                    selectedTransportation = Transportation.train;
                  }),
            ),
            RadioListTile(
              title: const Text('Other'),
              subtitle: const Text('Viajar en otro medio'),
              value: Transportation.other,
              groupValue: selectedTransportation,
              onChanged:
                  (value) => setState(() {
                    selectedTransportation = Transportation.other;
                  }),
            ),
          ],
        ),

        CheckboxListTile(
          title: const Text('Desayuno?'),
          subtitle: const Text('Incluir Desayuno?'),
          value: wantsBreakfast,
          onChanged:
              (value) => setState(() {
                wantsBreakfast = !wantsBreakfast;
              }),
        ),
        CheckboxListTile(
          title: const Text('Almuerzo?'),
          subtitle: const Text('Incluir Almuerzo?'),
          value: wantsLunch,
          onChanged:
              (value) => setState(() {
                wantsLunch = !wantsLunch;
              }),
        ),
        CheckboxListTile(
          title: const Text('Cena?'),
          subtitle: const Text('Incluir Cena?'),
          value: wantsDinner,
          onChanged:
              (value) => setState(() {
                wantsDinner = !wantsDinner;
              }),
        ),
      ],
    );
  }
}
